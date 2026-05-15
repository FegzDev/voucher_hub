import 'package:flutter/material.dart';

class VoucherHubTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final bool obscureText;
  final String? hintText;
  final Widget? suffixIcon;
  final BorderRadius? borderRadius;
  final FormFieldValidator<String>? validator;

  const VoucherHubTextFormField({
    super.key,
    required this.controller,
    this.obscureText = false,
    this.hintText,
    this.suffixIcon,
    this.borderRadius,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(16),
        ),
      ),
      validator: validator,
    );
  }
}
