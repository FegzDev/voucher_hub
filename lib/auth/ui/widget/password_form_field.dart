import 'package:flutter/material.dart';
import 'package:voucher_hub/ui/voucher_hub_text_form_field.dart';

class PasswordFormField extends StatefulWidget {
  final TextEditingController controller;
  final String? hintText;
  final BorderRadius? borderRadius;
  final FormFieldValidator<String>? validator;

  const PasswordFormField({
    super.key,
    required this.controller,
    this.hintText = 'Password',
    this.borderRadius,
    this.validator,
  });

  @override
  State<PasswordFormField> createState() => _PasswordFormFieldState();
}

class _PasswordFormFieldState extends State<PasswordFormField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return VoucherHubTextFormField(
      controller: widget.controller,
      obscureText: _obscureText,
      hintText: widget.hintText,
      suffixIcon: IconButton(
        onPressed: () {
          setState(() {
            _obscureText = !_obscureText;
          });
        },
        tooltip: _obscureText ? 'Show' : 'Hide',
        icon: AnimatedSwitcher(
          duration: const Duration(milliseconds: 200),
          child: Icon(
            _obscureText
                ? Icons.visibility_off_outlined
                : Icons.visibility_outlined,
          ),
        ),
      ),
      borderRadius: widget.borderRadius,
      validator: widget.validator,
    );
  }
}
