import 'package:di/domain_module.dart';
import 'package:domain/invoice/model/invoice.dart';
import 'package:domain/invoice/model/invoice_item.dart';
import 'package:domain/company/model/company.dart';
import 'package:domain/company/model/item_type.dart';
import 'package:domain/customer/model/customer.dart';
import 'package:domain/invoice/model/units.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:invoice/common/extension.dart';
import 'package:invoice/core/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/translations.dart';
import 'package:collection/collection.dart';

import '../common/utils.dart';
import '../core/utils/invoice/invoice_utils.dart';

class OfferEditScreen extends ConsumerStatefulWidget {
  final Object? extra;

  const OfferEditScreen({Key? key, this.extra}) : super(key: key);

  @override
  OfferEditScreenState createState() => OfferEditScreenState();
}

class OfferEditScreenState extends ConsumerState<OfferEditScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _invoiceNrController = TextEditingController();
  final TextEditingController _dateOfIssueController = TextEditingController();
  final TextEditingController _dateOfIssueTimeController = TextEditingController();
  final TextEditingController _paymentDueController = TextEditingController();
  final TextEditingController _deliverDateController = TextEditingController();
  final TextEditingController _totalPriceController = TextEditingController();
  final TextEditingController _vatController = TextEditingController();
  final TextEditingController _rebateController = TextEditingController();
  final TextEditingController _referenceNumberController = TextEditingController();
  final TextEditingController _dateOfPaymentController = TextEditingController();
  final TextEditingController _cashChargedController = TextEditingController();
  final TextEditingController _transferChargedController = TextEditingController();
  final TextEditingController _exchangeRateController = TextEditingController();
  final TextEditingController _domesticTotalPriceController = TextEditingController();

  Invoice? _invoice;
  Customer? _customer;
  Company? _company;
  DateTime? _deliveryDate;
  DateTime? _paymentDue;
  DateTime? _dateOfIssue;
  DateTime? _dateOfPayment;
  late List<Customer> _customers = [];
  late List<InvoiceItem> _invoiceItems;

  @override
  void initState() {
    if (widget.extra == null) {
      var now = DateTime.now();
      _dateOfIssue = now;
      _dateOfIssueController.text = now.presentationDate;
      _deliveryDate = now;
      _deliverDateController.text = now.presentationDate;
      var paymentDue = now.add(const Duration(days: 1));
      _paymentDue = paymentDue;
      _paymentDueController.text = paymentDue.presentationDate;
    } else {
      if (widget.extra is Invoice) {
        _invoice = widget.extra as Invoice;
        var invoice = _invoice;
        if (invoice != null) {
          _deliveryDate = invoice.deliveryDate;
          _paymentDue = invoice.paymentDue;
          _dateOfIssue = invoice.dateOfIssue;
          _dateOfPayment = invoice.dateOfPayment;
          _deliverDateController.text = _deliveryDate?.presentationDate ?? '';
          _paymentDueController.text = _paymentDue?.presentationDate ?? '';
          _dateOfIssueController.text = _dateOfIssue?.presentationDate ?? '';
          _dateOfIssueTimeController.text = _dateOfIssue?.presentationHourMin ?? '';
          _dateOfPaymentController.text = _dateOfPayment?.presentationDate ?? '';
          _vatController.text = formatCurrency(invoice.vat);
          _rebateController.text = formatCurrency(invoice.rebate);
          _referenceNumberController.text = invoice.referenceNumber != null ? invoice.referenceNumber.toString() : '';
          _cashChargedController.text = formatCurrency(invoice.cashCharged ?? 0);
          _transferChargedController.text = formatCurrency(invoice.transferCharged ?? 0);
          _totalPriceController.text = formatCurrency(invoice.totalPrice);
          _exchangeRateController.text = '${invoice.exchangeRate ?? 1}';
          _domesticTotalPriceController.text = formatCurrency(invoice.domesticTotalPrice ?? invoice.totalPrice);
        }
        _invoiceItems = _invoice?.items ?? [];
      } else {
        var now = DateTime.now();
        _dateOfIssue = now;
        _dateOfIssueController.text = now.presentationDate;
        _deliveryDate = now;
        _deliverDateController.text = now.presentationDate;
        var paymentDue = now.add(const Duration(days: 1));
        _paymentDue = paymentDue;
        _paymentDueController.text = paymentDue.presentationDate;
        _invoiceNrController.text = widget.extra as String;
        _invoiceItems = [];
      }
    }

    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (_invoice == null) {
      var now = DateTime.now();
      if (_dateOfIssueTimeController.text.isEmpty) {
        _dateOfIssueTimeController.text = TimeOfDay.fromDateTime(now).format(context);
      }
    }

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    ref.read(customersStreamProvider).whenData((value) {
      setState(() {
        _customers = value;
        if (value.isNotEmpty) {
          _customer = value.first;
        }
      });
    });

    _totalPriceController.text = formatCurrency(_invoiceItems.map((e) => e.amount * e.price).toList().sum);
    _domesticTotalPriceController.text = formatCurrency((_invoiceItems.map((e) => e.amount * e.price).toList().sum) * (double.tryParse(_exchangeRateController.text) ?? 1.0));

    return Scaffold(
      appBar: AppBar(),
      body: ref.watch(companyStreamProvider).when(
            data: (data) {
              _company = data;
              return _invoiceEditWidget();
            },
            error: (error, stack) => GeneralError(errorMessage: error.toString()),
            loading: () => const PrimaryLoading(),
          ),
    );
  }

  Widget _invoiceEditWidget() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(_company?.name ?? ''),
              const SizedBox(height: 8),
              Text(Translations.of(context)!.invoiceNrLabel(_invoiceNrController.text.isNotEmpty ? _invoiceNrController.text : _invoice?.invoiceNr ?? '')),
              DropdownButtonFormField(
                items: _customers.map((Customer type) {
                  return DropdownMenuItem(value: type, child: Text(type.name));
                }).toList(),
                value: _customer,
                onChanged: (Customer? newValue) {
                  if (newValue != null) {
                    setState(() {
                      _customer = newValue;
                    });
                  }
                },
                decoration: InputDecoration(
                  labelText: Translations.of(context)!.invoiceLabelCustomer,
                ),
              ),
              PrimaryTextFormField(
                controller: _dateOfIssueController,
                label: Translations.of(context)!.invoiceLabelDateOfIssue,
                readOnly: true,
                validator: (_) => null,
                onTap: () {
                  _dateTime.then((dateTime) {
                    if (dateTime != null) {
                      _dateOfIssueController.text = dateTime.presentationDate;
                    }
                    _dateOfIssue = dateTime;
                  });
                },
              ),
              PrimaryTextFormField(
                controller: _dateOfIssueTimeController,
                label: Translations.of(context)!.invoiceLabelDateOfIssueTime,
                readOnly: true,
                validator: (_) => null,
                onTap: () {
                  showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  ).then((time) {
                    if (time != null) {
                      _dateOfIssueTimeController.text = time.format(context);
                      var date = _dateOfIssue;
                      if (date != null) {
                        _dateOfIssue = DateTime(date.year, date.month, date.day, time.hour, time.minute);
                      }
                    }
                  });
                },
              ),
              PrimaryTextFormField(
                controller: _deliverDateController,
                label: Translations.of(context)!.invoiceLabelDeliveryDate,
                readOnly: true,
                onTap: () {
                  _dateTime.then((dateTime) {
                    if (dateTime != null) {
                      _deliverDateController.text = dateTime.presentationDate;
                    }
                    _deliveryDate = dateTime;
                  });
                },
              ),
              PrimaryTextFormField(
                controller: _paymentDueController,
                label: Translations.of(context)!.invoiceLabelPaymentDue,
                readOnly: true,
                validator: (_) => null,
                onTap: () {
                  _dateTime.then((dateTime) {
                    if (dateTime != null) {
                      _paymentDueController.text = dateTime.presentationDate;
                    }
                    _paymentDue = dateTime;
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: _itemsWidget(),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    _invoiceItems = [
                      ..._invoiceItems,
                      InvoiceItem(
                        id: _invoiceItems.length.toString(),
                        name: '',
                        unit: Unit.values.first,
                        amount: 0,
                        price: 0,
                        rebate: 0,
                        itemType: ItemType.service,
                      ),
                    ];
                  });
                },
                icon: const Icon(Icons.add_circle),
                label: Text(Translations.of(context)!.invoiceEditAddInvoiceItem),
              ),
              PrimaryTextFormField(
                controller: _totalPriceController,
                label: Translations.of(context)!.invoiceLabelPriceWithCurrency(_customer?.mainCurrency ?? ''),
                readOnly: true,
                inputFormatters: [
                  MoneyInputFormatter(),
                ],
              ),
              PrimaryTextFormField(
                controller: _exchangeRateController,
                label: Translations.of(context)!.invoiceLabelExchangeRate,
                textInputType: TextInputType.number,
              ),
              PrimaryTextFormField(
                controller: _domesticTotalPriceController,
                label: Translations.of(context)!.invoiceLabelPriceWithCurrency(_company?.mainCurrency ?? ''),
                readOnly: true,
                inputFormatters: [
                  MoneyInputFormatter(),
                ],
              ),
              PrimaryTextFormField(
                controller: _rebateController,
                textInputType: TextInputType.number,
                label: Translations.of(context)!.invoiceLabelRebate, //todo
                inputFormatters: [
                  MoneyInputFormatter(),
                ],
              ),
              PrimaryTextFormField(
                controller: _vatController,
                textInputType: TextInputType.number,
                label: Translations.of(context)!.invoiceLabelVat, //todo
                inputFormatters: [
                  MoneyInputFormatter(),
                ],
              ),
              PrimaryTextFormField(
                controller: _referenceNumberController,
                textInputType: TextInputType.name,
                label: Translations.of(context)!.invoiceLabelStatementNumber,
                validator: (_) => null,
              ),
              PrimaryTextFormField(
                controller: _dateOfPaymentController,
                label: Translations.of(context)!.invoiceLabelDateOfPayment,
                readOnly: true,
                validator: (_) => null,
                onTap: () {
                  _dateTime.then((dateTime) {
                    if (dateTime != null) {
                      _dateOfPaymentController.text = dateTime.presentationDate;
                    }
                    _dateOfPayment = dateTime;
                  });
                },
              ),
              PrimaryTextFormField(
                controller: _cashChargedController,
                textInputType: TextInputType.number,
                label: Translations.of(context)!.invoiceLabelCashCharged,
                validator: (_) => null,
                inputFormatters: [
                  MoneyInputFormatter(),
                ],
              ),
              PrimaryTextFormField(
                controller: _transferChargedController,
                textInputType: TextInputType.number,
                label: Translations.of(context)!.invoiceLabelTransferCharged,
                validator: (_) => null,
              ),
              const SizedBox(height: 24),
              PrimaryButton(
                onPressed: () => _onEditPressed(),
                child: Text(Translations.of(context)!.invoiceEditBtnSave),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _itemsWidget() {
    return _invoiceItems.isEmpty
        ? const SizedBox.shrink()
        : ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (BuildContext context, int index) => const Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
            ),
            padding: const EdgeInsets.symmetric(vertical: 24),
            itemCount: _invoiceItems.length,
            itemBuilder: (context, index) {
              return Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                  child: Column(
                    children: [
                      PrimaryTextFormField(
                        label: Translations.of(context)!.invoiceItemLabelName,
                        initialValue: _invoiceItems[index].name,
                        onChanged: (String? value) {
                          if (value != null) {
                            setState(() {
                              _invoiceItems[index] = _invoiceItems[index].copyWith(name: value);
                            });
                          }
                        },
                        validator: (String? value) {
                          String? validator;
                          if (value != null) {
                            if (value.isEmpty) {
                              validator = Translations.of(context)!.generalErrorMandatory;
                            }
                          }
                          return validator;
                        },
                      ),
                      DropdownButtonFormField(
                        items: Unit.values.map((Unit type) {
                          return DropdownMenuItem<Unit>(value: type, child: Text(invoiceUnitTranslations(context, type)));
                        }).toList(),
                        value: Unit.values.firstWhereOrNull((element) => element.name == _invoiceItems[index].unit.name),
                        onChanged: (Unit? newValue) {
                          if (newValue != null) {
                            setState(() {
                              _invoiceItems[index] = _invoiceItems[index].copyWith(unit: newValue);
                            });
                          }
                        },
                        decoration: InputDecoration(
                          labelText: Translations.of(context)!.invoiceItemLabelUnit,
                        ),
                      ),
                      DropdownButtonFormField(
                        items: ItemType.values.map((ItemType type) {
                          return DropdownMenuItem(value: type, child: Text(invoiceItemTypeTranslations(context, type)));
                        }).toList(),
                        value: _invoiceItems[index].itemType,
                        onChanged: (ItemType? newValue) {
                          if (newValue != null) {
                            setState(() {
                              _invoiceItems[index] = _invoiceItems[index].copyWith(itemType: newValue);
                            });
                          }
                        },
                        decoration: InputDecoration(
                          labelText: Translations.of(context)!.invoiceItemTypeLabel,
                        ),
                      ),
                      PrimaryTextFormField(
                        textInputType: TextInputType.number,
                        label: Translations.of(context)!.invoiceItemLabelAmount,
                        initialValue: _invoiceItems[index].amount != 0 ? _invoiceItems[index].amount.toString() : null,
                        onChanged: (String? value) {
                          if (value != null) {
                            _invoiceItems[index] = _invoiceItems[index].copyWith(amount: int.tryParse(value) ?? 0);
                          }
                        },
                        validator: (String? value) {
                          String? validator;
                          if (value != null) {
                            if (value.isEmpty) {
                              validator = Translations.of(context)!.generalErrorMandatory;
                            }
                          }
                          return validator;
                        },
                      ),
                      PrimaryTextFormField(
                        textInputType: TextInputType.number,
                        label: Translations.of(context)!.invoiceItemLabelPrice,
                        initialValue: formatCurrency(_invoiceItems[index].price),
                        onChanged: (String? value) {
                          if (value != null) {
                            _invoiceItems[index] = _invoiceItems[index].copyWith(price: priceFromString(value));
                          }
                        },
                        validator: (String? value) {
                          String? validator;
                          if (value != null) {
                            if (value.isEmpty) {
                              validator = Translations.of(context)!.generalErrorMandatory;
                            }
                          }
                          return validator;
                        },
                        inputFormatters: [
                          MoneyInputFormatter(),
                        ],
                      ),
                      PrimaryTextFormField(
                        textInputType: TextInputType.number,
                        label: Translations.of(context)!.invoiceItemLabelRebate,
                        initialValue: formatCurrency(_invoiceItems[index].rebate),
                        validator: (_) => null,
                        inputFormatters: [
                          MoneyInputFormatter(),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Align(
                        alignment: Alignment.topRight,
                        child: IconButton(
                          onPressed: () {
                            dismissKeyboard();
                            setState(() {
                              _invoiceItems.removeAt(index);
                            });
                          },
                          icon: const Icon(Icons.remove_circle_outline),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
  }

  Future<DateTime?> get _dateTime {
    return showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
  }

  void _onEditPressed() {
    dismissKeyboard();

    Company? company = _company;
    Customer? customer = _customer;
    DateTime? paymentDue = _paymentDue;
    DateTime? dateOfIssue = _dateOfIssue;
    DateTime? deliveryDate = _deliveryDate;
    if (_formKey.currentState != null &&
        _formKey.currentState!.validate() &&
        company != null &&
        customer != null &&
        paymentDue != null &&
        dateOfIssue != null &&
        deliveryDate != null &&
        _invoiceItems.isNotEmpty) {
      _formKey.currentState?.save();

      Invoice editedInvoice = Invoice(
        id: _invoice?.id ?? '',
        invoiceNr: _invoiceNrController.text.isNotEmpty ? _invoiceNrController.text : _invoice?.invoiceNr ?? '',
        companyId: company.id,
        customerId: customer.id,
        paymentDue: paymentDue,
        dateOfIssue: dateOfIssue,
        deliveryDate: deliveryDate,
        items: _invoiceItems,
        totalPrice: priceFromString(_totalPriceController.text),
        rebate: priceFromString(_rebateController.text),
        vat: priceFromString(_vatController.text),
        referenceNumber: _referenceNumberController.text,
        dateOfPayment: _dateOfPayment,
        cashCharged: priceFromString(_cashChargedController.text),
        transferCharged: priceFromString(_transferChargedController.text),
        currency: customer.mainCurrency,
        domesticCurrency: company.mainCurrency,
        domesticTotalPrice: priceFromString(_domesticTotalPriceController.text),
        exchangeRate: double.tryParse(_exchangeRateController.text) ?? 1,
      );
      ref.read(offerUseCaseProvider).editOffer(editedInvoice).then((value) {
        Navigator.popUntil(context, (route) => route.isFirst);
      }).catchError((onError) {
        showSnackBar(context, Translations.of(context)!.generalError);
      });
    }
  }
}
