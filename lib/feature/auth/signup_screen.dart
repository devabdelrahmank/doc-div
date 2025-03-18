import 'package:doc_div/core/my_color.dart';
import 'package:doc_div/core/my_styles.dart';
import 'package:doc_div/core/my_text.dart';
import 'package:doc_div/core/spacing.dart';
import 'package:doc_div/feature/auth/widget/my_text_btn.dart';
import 'package:doc_div/feature/auth/widget/text_field_with_name.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  static const routeName = 'signupScreen';
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          MyText.newAccount,
          style: MyStyles.title24Whitew300.copyWith(
            color: MyColor.primaryColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              vSpace(36),
              TextFieldWithName(
                text: MyText.fullName,
                hintText: 'John Doe',
                validator: (val) {
                  return '';
                },
                controller: TextEditingController(),
              ),
              TextFieldWithName(
                text: MyText.password,
                hintText: MyText.dots,
                validator: (val) {
                  return '';
                },
                controller: TextEditingController(),
                suffixWidget: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.remove_red_eye),
                ),
              ),
              TextFieldWithName(
                text: MyText.email,
                hintText: MyText.example,
                validator: (val) {
                  return '';
                },
                controller: TextEditingController(),
              ),
              TextFieldWithName(
                text: MyText.mobileNumber,
                hintText: '01234567890',
                validator: (val) {
                  return '';
                },
                controller: TextEditingController(),
              ),
              TextFieldWithName(
                text: MyText.dateOfBirth,
                hintText: '01/01/2000',
                validator: (val) {
                  return '';
                },
                controller: TextEditingController(),
              ),
              Text(
                MyText.byContinuing,
                style: MyStyles.title12Blackw300.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
              vSpace(10),
              MyTextBtn(
                onTap: () {},
                text: MyText.signUP,
                color: MyColor.primaryColor,
                textColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
