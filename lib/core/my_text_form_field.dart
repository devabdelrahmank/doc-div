// ignore_for_file: camel_case_types, must_be_immutable

import 'package:doc_div/core/my_color.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final double? sizePadding;
  final Color? colorContainer;
  final String? text;
  final bool borderDelete;
  final TextEditingController controller;
  final TextAlign? textAlign;
  final Widget? prefix;
  final Widget? suffix;
  final Function()? suffixPressed;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final TextDirection? textDirection;
  final Function()? onTap;
  final bool? obscureText;
  final Color? fillColor;
  final Function(String)? onchanged;

  const CustomTextField({
    super.key,
    this.borderDelete = false,
    this.fillColor = MyColor.formColor,
    this.obscureText = true,
    required this.onTap,
    this.textDirection,
    required this.validator,
    this.sizePadding = 15,
    this.keyboardType = TextInputType.text,
    required this.text,
    required this.controller,
    this.textAlign = TextAlign.end,
    this.suffix,
    this.prefix,
    this.suffixPressed,
    this.onchanged,
    this.colorContainer,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      obscureText: obscureText!,
      onTap: onTap,
      onChanged: onchanged,
      textDirection: textDirection,
      controller: controller,
      textAlign: textAlign!,
      validator: validator,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.only(bottom: 20, top: 5, right: 15, left: 20),
        suffixIconColor: Colors.grey,
        hintText: text,
        hintStyle: const TextStyle(
          color: MyColor.hintColor,
          fontSize: 20,
          fontWeight: FontWeight.w400,
        ),
        fillColor: fillColor,
        filled: true,
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        enabledBorder: borderDelete == false
            ? outlineInputBorder1()
            : outlineInputBorderNote(),
        focusedBorder: borderDelete == false
            ? outlineInputBorder2()
            : outlineInputBorderNote(),
        prefixIcon: prefix,
        suffixIcon: suffix,
      ),
    );
  }
  //!ده لما تبقي مش focuse

  OutlineInputBorder outlineInputBorder1() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: MyColor.formColor,
        width: 0.7,
      ),
    );
  }
  //!ده لما تبقي مش focuse

  OutlineInputBorder outlineInputBorderNote() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: MyColor.formColor,
        width: 0.7,
      ),
    );
  }

  //!ده لما تبقي focuse
  OutlineInputBorder outlineInputBorder2() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: MyColor.formColor,
        width: 0.7,
      ),
    );
  }
}
