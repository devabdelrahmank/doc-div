import 'package:doc_div/core/my_color.dart';
import 'package:doc_div/core/my_styles.dart';
import 'package:doc_div/core/spacing.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: MyColor.primaryColor,
            )),
        centerTitle: true,
        title: Text(
          title,
          style: MyStyles.title24Whitew300.copyWith(
              fontWeight: FontWeight.w600, color: MyColor.primaryColor),
        ),
        actions: [
          Row(
            children: [
              Container(
                width: 30,
                height: 30,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: MyColor.secondaryColor,
                ),
                child: const Icon(Icons.search, color: MyColor.primaryColor),
              ),
              hSpace(5),
              Container(
                margin: const EdgeInsets.only(right: 15),
                width: 30,
                height: 30,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: MyColor.secondaryColor,
                ),
                child: const Icon(
                  Icons.settings_outlined,
                  color: MyColor.primaryColor,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
