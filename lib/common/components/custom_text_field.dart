import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  const TextFieldInput({
    super.key,
    required this.controller,
    this.isObscureText = false,
    this.type = TextInputType.name,
    this.hintText = '',
  });

  final bool isObscureText;
  final TextInputType type;
  final TextEditingController controller;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: type,
      obscureText: isObscureText,
      style: const TextStyle(
        height: 1,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        border: OutlineInputBorder(
          borderSide: Divider.createBorderSide(context),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: Divider.createBorderSide(context),
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: Divider.createBorderSide(context),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
