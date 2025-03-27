import 'package:doc_div/core/my_color.dart';
import 'package:doc_div/core/my_images.dart';
import 'package:doc_div/core/my_styles.dart';
import 'package:doc_div/core/my_text.dart';
import 'package:doc_div/core/spacing.dart';
import 'package:doc_div/feature/auth/login_screen.dart';
import 'package:doc_div/feature/auth/signup_screen.dart';
import 'package:doc_div/feature/auth/widget/my_text_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(MyImages.appLogo),
            const SizedBox(
              height: 120,
              width: 100,
              child: Column(
                children: [
                  Expanded(
                    child: Text(
                      MyText.skin,
                      style: MyStyles.title48Bluew100,
                    ),
                  ),
                ],
              ),
            ),
            vSpace(10),
            Text(
              MyText.dermatologyCenter,
              style: MyStyles.title12Blackw300.copyWith(
                fontWeight: FontWeight.w600,
                color: MyColor.primaryColor,
              ),
            ),
            vSpace(50),
            const Text(
              MyText.lorem,
              textAlign: TextAlign.center,
            ),
            vSpace(30),
            MyTextBtn(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();
                  },
                ));
              },
              text: MyText.login,
              color: MyColor.primaryColor,
              textColor: Colors.white,
            ),
            vSpace(10),
            MyTextBtn(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const SignupScreen();
                  },
                ));
              },
              text: MyText.signUP,
              color: MyColor.secondaryColor,
              textColor: MyColor.primaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
