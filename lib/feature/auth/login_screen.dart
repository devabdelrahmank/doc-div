import 'package:doc_div/core/my_color.dart';
import 'package:doc_div/core/my_styles.dart';
import 'package:doc_div/core/my_text.dart';
import 'package:doc_div/core/spacing.dart';
import 'package:doc_div/feature/auth/set_screen.dart';
import 'package:doc_div/feature/auth/signup_screen.dart';
import 'package:doc_div/feature/auth/widget/my_text_btn.dart';
import 'package:doc_div/feature/auth/widget/my_text_field_with_name.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          MyText.hello,
          style: MyStyles.title24Whitew300.copyWith(
              color: MyColor.primaryColor, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              vSpace(50),
              Text(MyText.welcome,
                  style: MyStyles.title24Whitew300.copyWith(
                      color: MyColor.primaryColor,
                      fontWeight: FontWeight.w600)),
              vSpace(50),
              TextFieldWithName(
                text: MyText.emailOrMobile,
                hintText: MyText.example,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your email or mobile';
                  }
                  return null;
                },
                controller: TextEditingController(),
              ),
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
              Row(
                children: [
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SetScreen()));
                    },
                    child: const Text(
                      MyText.forgetPassword,
                      style: TextStyle(color: MyColor.primaryColor),
                    ),
                  )
                ],
              ),
              vSpace(50),
              Center(
                child: Column(
                  children: [
                    MyTextBtn(
                        onTap: () {},
                        text: MyText.login,
                        color: MyColor.primaryColor,
                        textColor: Colors.white),
                    vSpace(20),
                    const Text(MyText.or, style: MyStyles.title12Blackw300),
                    vSpace(20),
                    /* حط الايكون هنا */
                    vSpace(35),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(MyText.dontHaveAccount),
                        hSpace(5),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignupScreen()),
                            );
                          },
                          child: const Text(MyText.signUP,
                              style: TextStyle(color: MyColor.primaryColor)),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
