import 'package:doc_div/core/my_color.dart';
import 'package:doc_div/core/my_text.dart';
import 'package:doc_div/core/spacing.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class Appointment extends StatelessWidget {
  const Appointment({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Text(
            '11 ${MyText.wednesday} - ${MyText.today}',
            style: TextStyle(color: MyColor.primaryColor),
          ),
          Row(
            children: [
              const Text(
                ' 9  AM',
                style: TextStyle(color: MyColor.primaryColor),
              ),
              hSpace(5),
              const Expanded(
                child: DottedLine(
                  direction: Axis.horizontal,
                  lineLength: double.infinity,
                  lineThickness: 1.0,
                  dashLength: 5.0,
                  dashColor: MyColor.primaryColor,
                  dashGapLength: 5.0,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  const Text(
                    '10 AM',
                    style: TextStyle(color: MyColor.primaryColor),
                  ),
                  vSpace(5),
                  const Text(
                    '11 AM',
                    style: TextStyle(color: MyColor.primaryColor),
                  ),
                ],
              ),
              hSpace(20),
              Container(
                padding: const EdgeInsets.all(5),
                height: 65,
                width: 230,
                decoration: BoxDecoration(
                    color: MyColor.secondaryColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Text(
                          '${MyText.dr}${MyText.oliviaTurner} ${MyText.md}',
                          style: TextStyle(
                              color: MyColor.primaryColor, fontSize: 14),
                        ),
                        const Spacer(),
                        Container(
                          width: 20,
                          height: 20,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.check,
                            size: 15,
                          ),
                        ),
                        hSpace(5),
                        Container(
                          width: 20,
                          height: 20,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.close,
                            size: 15,
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      MyText.treatmentAnd,
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Text(
                ' 9  AM',
                style: TextStyle(color: MyColor.primaryColor),
              ),
              hSpace(5),
              const Expanded(
                child: DottedLine(
                  direction: Axis.horizontal,
                  lineLength: double.infinity,
                  lineThickness: 1.0,
                  dashLength: 5.0,
                  dashColor: MyColor.primaryColor,
                  dashGapLength: 5.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
