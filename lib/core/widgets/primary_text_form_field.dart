import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PrimaryTextFormField extends StatelessWidget {
  final String? label;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final TextInputType textInputType;
  final TextCapitalization textCapitalization;
  final bool obscureText;
  final int maxLines;
  final int minLines;
  final String? hintText;
  final GestureTapCallback? onTap;
  final bool? enabled;
  final bool readOnly;
  final ValueChanged<String>? onChanged;
  final String? initialValue;
  final List<TextInputFormatter>? inputFormatters;

  const PrimaryTextFormField({
    Key? key,
    this.label,
    this.controller,
    this.validator,
    this.textInputType = TextInputType.text,
    this.textCapitalization = TextCapitalization.sentences,
    this.obscureText = false,
    this.maxLines = 1,
    this.minLines = 1,
    this.hintText,
    this.onTap,
    this.enabled,
    this.readOnly = false,
    this.onChanged,
    this.initialValue,
    this.inputFormatters,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      keyboardType: textInputType,
      textCapitalization: textCapitalization,
      obscureText: obscureText,
      maxLines: maxLines,
      minLines: minLines,
      onTap: onTap,
      enabled: enabled,
      readOnly: readOnly,
      onChanged: onChanged,
      initialValue: initialValue,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        labelText: label,
        hintText: hintText,
        alignLabelWithHint: true,
      ),
    );
  }
}
