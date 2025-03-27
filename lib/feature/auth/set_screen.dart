import 'package:doc_div/core/my_color.dart';
import 'package:doc_div/core/my_styles.dart';
import 'package:doc_div/core/my_text.dart';
import 'package:doc_div/core/spacing.dart';
import 'package:doc_div/feature/auth/widget/my_text_btn.dart';
import 'package:doc_div/feature/auth/widget/my_text_field_with_name.dart';
import 'package:flutter/material.dart';

class SetScreen extends StatelessWidget {
  const SetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          MyText.setPassword,
          style: MyStyles.title24Whitew300.copyWith(
              color: MyColor.primaryColor, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const Text(
              MyText.lorem,
              style: MyStyles.title12Blackw300,
            ),
            vSpace(50),
            TextFieldWithName(
              text: MyText.password,
              hintText: MyText.dots,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your password';
                }
                return null;
              },
              controller: TextEditingController(),
              suffixWidget: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.remove_red_eye),
              ),
            ),
            TextFieldWithName(
              text: MyText.confirmPassword,
              hintText: MyText.dots,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your password';
                }
                return null;
              },
              controller: TextEditingController(),
              suffixWidget: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.remove_red_eye),
              ),
            ),
            vSpace(30),
            MyTextBtn(
              onTap: () {},
              text: MyText.createNewPassword,
              color: MyColor.primaryColor,
              textColor: Colors.white,
              width: 300,
            )
          ],
        ),
      ),
    );
  }
}
