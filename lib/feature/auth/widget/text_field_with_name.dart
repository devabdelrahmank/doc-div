import 'package:doc_div/core/my_styles.dart';
import 'package:doc_div/core/my_text_form_field.dart';
import 'package:doc_div/core/spacing.dart';
import 'package:flutter/material.dart';

class TextFieldWithName extends StatelessWidget {
  final Widget? suffixWidget;
  final String text;
  final String hintText;
  final bool obscureText;
  final void Function()? onTap;
  final String? Function(String?)? validator;
  final TextEditingController controller;

  const TextFieldWithName({
    super.key,
    this.suffixWidget,
    required this.text,
    required this.hintText,
    this.obscureText = false,
    this.onTap,
    required this.validator,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: MyStyles.title20Black500,
        ),
        verticalSpacing(10),
        CustomTextField(
          text: hintText,
          textAlign: TextAlign.start,
          keyboardType: TextInputType.emailAddress,
          controller: controller,
          onTap: onTap,
          validator: validator,
          obscureText: obscureText,
          suffix: suffixWidget,
        ),
        verticalSpacing(20),
      ],
    );
  }
}
