import 'package:currency_picker/currency_picker.dart';
import 'package:di/domain_module.dart';
import 'package:domain/customer/model/customer.dart';
import 'package:domain/customer/model/customer_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/translations.dart';

import '../common/utils.dart';
import '../core/custom_widgets.dart';
import '../core/utils/customer/customer_utils.dart';

class CustomerEditScreen extends ConsumerStatefulWidget {
  final Customer? customer;

  const CustomerEditScreen({Key? key, this.customer}) : super(key: key);

  @override
  CustomerEditScreenState createState() => CustomerEditScreenState();
}

class CustomerEditScreenState extends ConsumerState<CustomerEditScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _postcodeController = TextEditingController();
  final TextEditingController _countryController = TextEditingController();
  final TextEditingController _companyIdController = TextEditingController();
  final TextEditingController _vatIdController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _webController = TextEditingController();
  final TextEditingController _mainCurrencyController = TextEditingController();

  late CustomerType _customerType;

  @override
  void initState() {
    _nameController.text = widget.customer?.name ?? '';
    _addressController.text = widget.customer?.address ?? '';
    _cityController.text = widget.customer?.city ?? '';
    _postcodeController.text = widget.customer?.postcode ?? '';
    _countryController.text = widget.customer?.country ?? '';
    _companyIdController.text = widget.customer?.companyId ?? '';
    _vatIdController.text = widget.customer?.vatId ?? '';
    _emailController.text = widget.customer?.email ?? '';
    _phoneController.text = widget.customer?.phone ?? '';
    _webController.text = widget.customer?.web ?? '';
    _customerType = widget.customer?.customerType ?? CustomerType.domestic;
    _mainCurrencyController.text = widget.customer?.mainCurrency ?? '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                _textFieldEmptyValidation(_nameController, Translations.of(context)!.companyEditLabelName),
                _textFieldEmptyValidation(_addressController, Translations.of(context)!.companyEditLabelAddress),
                _textFieldEmptyValidation(_cityController, Translations.of(context)!.companyEditLabelCity),
                _textFieldEmptyValidation(_postcodeController, Translations.of(context)!.companyEditLabelPostcode, textInputType: TextInputType.number),
                _textFieldEmptyValidation(_countryController, Translations.of(context)!.companyEditLabelCountry),
                PrimaryTextFormField(
                  controller: _companyIdController,
                  label: Translations.of(context)!.companyEditLabelCompanyId,
                  textInputType: TextInputType.number,
                  validator: (_) => null,
                ),
                DropdownButtonFormField(
                  items: CustomerType.values.map((CustomerType type) {
                    return DropdownMenuItem<CustomerType>(value: type, child: Text(customerTypeTranslations(context, type)));
                  }).toList(),
                  value: _customerType,
                  onChanged: (CustomerType? newValue) {
                    if (newValue != null) {
                      setState(() {
                        _customerType = newValue;
                      });
                    }
                  },
                  decoration: InputDecoration(
                    labelText: Translations.of(context)!.companyEditLabelCustomerType,
                  ),
                ),
                PrimaryTextFormField(
                  controller: _vatIdController,
                  label: Translations.of(context)!.companyEditLabelVatId,
                  validator: (_) => null,
                ),
                PrimaryTextFormField(
                  controller: _mainCurrencyController,
                  textInputType: TextInputType.text,
                  label: Translations.of(context)!.companyEditLabelMainCurrency,
                  validator: (String? value) {
                    String? validator;
                    if (value != null) {
                      if (value.isEmpty) {
                        validator = Translations.of(context)!.generalErrorMandatory;
                      }
                    }
                    return validator;
                  },
                  readOnly: true,
                  onTap: () => showCurrencyPicker(
                    context: context,
                    showFlag: true,
                    showCurrencyName: true,
                    showSearchField: false,
                    showCurrencyCode: true,
                    onSelect: (Currency currency) {
                      _mainCurrencyController.text = currency.code;
                    },
                  ),
                ),
                PrimaryTextFormField(
                  controller: _emailController,
                  textInputType: TextInputType.emailAddress,
                  label: Translations.of(context)!.companyEditLabelEmail,
                  validator: (_) => null,
                ),
                PrimaryTextFormField(
                  controller: _phoneController,
                  textInputType: TextInputType.phone,
                  label: Translations.of(context)!.companyEditLabelPhone,
                  validator: (_) => null,
                ),
                PrimaryTextFormField(
                  controller: _webController,
                  textInputType: TextInputType.text,
                  label: Translations.of(context)!.companyEditLabelWeb,
                  validator: (_) => null,
                ),
                const SizedBox(height: 24),
                PrimaryButton(
                  onPressed: () => _onEditPressed(),
                  child: Text(Translations.of(context)!.companyEditBtnSave),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _textFieldEmptyValidation(TextEditingController controller, String label, {TextInputType textInputType = TextInputType.name}) {
    return PrimaryTextFormField(
      controller: controller,
      textInputType: textInputType,
      label: label,
      validator: (String? value) {
        String? validator;
        if (value != null) {
          if (value.isEmpty) {
            validator = Translations.of(context)!.generalErrorMandatory;
          }
        }
        return validator;
      },
    );
  }

  void _onEditPressed() {
    dismissKeyboard();

    if (_formKey.currentState != null && _formKey.currentState!.validate()) {
      _formKey.currentState?.save();
      String id = widget.customer?.id ?? '';
      Customer editedCustomer = Customer(
        id: id,
        name: _nameController.text,
        address: _addressController.text,
        city: _cityController.text,
        postcode: _postcodeController.text,
        country: _countryController.text,
        companyId: _companyIdController.text,
        vatId: _vatIdController.text,
        email: _emailController.text,
        phone: _phoneController.text,
        web: _webController.text,
        customerType: _customerType,
        mainCurrency: _mainCurrencyController.text
      );

      ref.read(customerUseCaseProvider).editCustomer(editedCustomer).then((value) {
        Navigator.popUntil(context, (route) => route.isFirst);
      }).catchError((onError) {
        showSnackBar(context, Translations.of(context)!.generalError);
      });
    }
  }
}
