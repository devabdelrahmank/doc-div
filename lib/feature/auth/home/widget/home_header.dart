import 'package:doc_div/core/my_color.dart';
import 'package:doc_div/core/my_images.dart';
import 'package:doc_div/core/my_styles.dart';
import 'package:doc_div/core/my_text.dart';
import 'package:doc_div/core/spacing.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(MyImages.splash),
            ),
            hSpace(10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(MyText.welcomeBack,
                    style: MyStyles.title12Blackw300
                        .copyWith(color: MyColor.primaryColor)),
                Text(MyText.johnDoe,
                    style: MyStyles.title20Black500.copyWith(fontSize: 15)),
              ],
            ),
          ],
        ),
        Row(
          children: [
            IconButton(
              icon: Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                    color: MyColor.secondaryColor, shape: BoxShape.circle),
                child: const Icon(Icons.notifications_outlined),
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                    color: MyColor.secondaryColor, shape: BoxShape.circle),
                child: const Icon(Icons.settings_outlined),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}
