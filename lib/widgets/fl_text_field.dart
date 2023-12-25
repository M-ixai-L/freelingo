import 'package:flutter/material.dart';
import 'package:freelingo/theme/colors.dart';

class FlTextField extends StatelessWidget {
  const FlTextField({
    super.key,
    required this.controller,
    this.label,
    this.labelText,
    this.hintText,
    this.formKey,
    this.obscureText = false,
    this.suffixIcon,
    this.validator,
    this.autofocus = false,
    this.filled = false,
    this.expands = false,
    this.onChanged,
  });

  final TextEditingController controller;

  final Widget? label;

  final Widget? suffixIcon;

  final String? labelText;

  final String? hintText;

  final GlobalKey<FormState>? formKey;

  final bool obscureText;

  final bool autofocus;

  final bool filled;
  final bool expands;

  final String? Function(String?)? validator;

  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      expands: expands,
      maxLines: expands ? null : 1,
      textAlignVertical: expands ? TextAlignVertical.top : null,
      validator: validator ??
          (value) {
            if (value == null || value.isEmpty) {
              return 'Please fill ${labelText?.toLowerCase()}';
            } else if (value.trim() == '') {
              return 'Please fill ${labelText?.toLowerCase()}';
            }
            return null;
          },
      autofocus: autofocus,
      decoration: InputDecoration(
        filled: filled,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        label: label,
        labelText: labelText,
        suffixIcon: suffixIcon,
        hintText: hintText,
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: FlColors.turquoise,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      controller: controller,
      onChanged: onChanged,
      obscureText: obscureText,
    );
  }
}
