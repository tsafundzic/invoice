import 'package:di/domain_module.dart';
import 'package:domain/company/model/company.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/translations.dart';
import 'package:currency_picker/currency_picker.dart';

import '../common/utils.dart';
import '../core/custom_widgets.dart';

class CompanyEditScreen extends ConsumerStatefulWidget {
  final Company? company;

  const CompanyEditScreen({Key? key, required this.company}) : super(key: key);

  @override
  CompanyEditScreenState createState() => CompanyEditScreenState();
}

class CompanyEditScreenState extends ConsumerState<CompanyEditScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _postcodeController = TextEditingController();
  final TextEditingController _ownerController = TextEditingController();
  final TextEditingController _ownerAddressController = TextEditingController();
  final TextEditingController _companyIdController = TextEditingController();
  final TextEditingController _ibanController = TextEditingController();
  final TextEditingController _bankNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _webController = TextEditingController();
  final TextEditingController _vatIdController = TextEditingController();
  final TextEditingController _mainCurrencyController = TextEditingController();

  @override
  void initState() {
    _nameController.text = widget.company?.name ?? '';
    _addressController.text = widget.company?.address ?? '';
    _cityController.text = widget.company?.city ?? '';
    _postcodeController.text = widget.company?.postcode ?? '';
    _ownerController.text = widget.company?.owner ?? '';
    _ownerAddressController.text = widget.company?.ownerAddress ?? '';
    _companyIdController.text = widget.company?.companyId ?? '';
    _ibanController.text = widget.company?.iban ?? '';
    _bankNameController.text = widget.company?.bankName ?? '';
    _emailController.text = widget.company?.email ?? '';
    _phoneController.text = widget.company?.phone ?? '';
    _webController.text = widget.company?.web ?? '';
    _vatIdController.text = widget.company?.vatId ?? '';
    _mainCurrencyController.text = widget.company?.mainCurrency ?? '';
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
                _textFieldEmptyValidation(_ownerController, Translations.of(context)!.companyEditLabelOwner),
                _textFieldEmptyValidation(_ownerAddressController, Translations.of(context)!.companyEditLabelOwnerAddress),
                _textFieldEmptyValidation(_companyIdController, Translations.of(context)!.companyEditLabelCompanyId, textInputType: TextInputType.number),
                _textFieldEmptyValidation(_ibanController, Translations.of(context)!.companyEditLabelIBAN),
                _textFieldEmptyValidation(_bankNameController, Translations.of(context)!.companyEditLabelBankName),
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
                  label: Translations.of(context)!.companyEditLabelWeb,
                  validator: (_) => null,
                ),
                PrimaryTextFormField(
                  controller: _vatIdController,
                  label: Translations.of(context)!.companyEditLabelVatId,
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
      String id = widget.company?.id ?? '';
      Company editedCompany = Company(
        id: id,
        name: _nameController.text,
        address: _addressController.text,
        city: _cityController.text,
        postcode: _postcodeController.text,
        owner: _ownerController.text,
        ownerAddress: _ownerAddressController.text,
        companyId: _companyIdController.text,
        iban: _ibanController.text,
        bankName: _bankNameController.text,
        email: _emailController.text,
        phone: _phoneController.text,
        web: _webController.text,
        vatId: _vatIdController.text,
        mainCurrency: _mainCurrencyController.text,
      );

      ref.read(companyUseCaseProvider).editCompany(editedCompany).then((value) {
        Navigator.popUntil(context, (route) => route.isFirst);
      }).catchError((onError) {
        showSnackBar(context, Translations.of(context)!.generalError);
      });
    }
  }
}
