import 'package:doc_div/core/my_color.dart';
import 'package:doc_div/core/my_text.dart';
import 'package:doc_div/core/spacing.dart';
import 'package:flutter/material.dart';

class DoctorInfoBlueContainer extends StatelessWidget {
  const DoctorInfoBlueContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 150,
          height: 40,
          decoration: BoxDecoration(
            color: MyColor.primaryColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              hSpace(5),
              const CircleAvatar(
                radius: 16,
                backgroundColor: MyColor.secondaryColor,
                child: Icon(
                  Icons.workspace_premium_outlined,
                  color: MyColor.primaryColor,
                ),
              ),
              hSpace(10),
              const Text(
                MyText.experience,
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
        vSpace(5),
        Container(
          width: 150,
          height: 130,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: MyColor.primaryColor,
            borderRadius: BorderRadius.circular(30),
          ),
          child: RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: MyText.focus,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextSpan(
                  text: MyText.theImpact,
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w300),
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }
}
