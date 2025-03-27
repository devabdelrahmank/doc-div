import 'package:doc_div/core/my_color.dart';
import 'package:doc_div/core/my_text.dart';
import 'package:doc_div/core/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorCard extends StatelessWidget {
  final String doctorName;
  final String specialty;
  final String department;
  final String imagePath;
  final double rating;
  final int reviews;

  const DoctorCard({
    super.key,
    required this.doctorName,
    required this.department,
    required this.specialty,
    required this.imagePath,
    required this.rating,
    required this.reviews,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              color: MyColor.secondaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  child: SvgPicture.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
                hSpace(12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 15),
                      width: 230,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${MyText.dr}$doctorName $department',
                            style: const TextStyle(
                                color: MyColor.primaryColor, fontSize: 17),
                          ),
                          Text(specialty)
                        ],
                      ),
                    ),
                    vSpace(10),
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Icon(
                                Icons.star_border_outlined,
                                size: 20,
                              ),
                              Text('$rating')
                            ],
                          ),
                        ),
                        hSpace(5),
                        Container(
                          width: 50,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Icon(
                                Icons.sms_outlined,
                                size: 18,
                              ),
                              Text('$reviews')
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 80),
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Icon(
                            Icons.question_mark,
                            size: 18,
                          ),
                        ),
                        hSpace(5),
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Icon(
                            Icons.favorite_outline,
                            size: 18,
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
