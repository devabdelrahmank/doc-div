import 'package:doc_div/core/my_color.dart';
import 'package:doc_div/core/my_text.dart';
import 'package:doc_div/core/spacing.dart';
import 'package:doc_div/feature/doctors/widget/doctors_sort_row.dart';
import 'package:flutter/material.dart';

class RatingCard extends StatelessWidget {
  final String doctorName;
  final String department;
  final String specialty;
  const RatingCard(
      {super.key,
      required this.doctorName,
      required this.department,
      required this.specialty});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 140,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: MyColor.secondaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 50,
          ),
          hSpace(10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 12,
                    backgroundColor: MyColor.primaryColor,
                    child: Icon(
                      Icons.workspace_premium,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                  hSpace(5),
                  const Text(
                    MyText.professionalDoctor,
                    style: TextStyle(color: MyColor.primaryColor, fontSize: 13),
                  ),
                  Container(
                    width: 50,
                    height: 20,
                    margin: const EdgeInsets.only(left: 50),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 20,
                          color: MyColor.primaryColor,
                        ),
                        Text('5')
                      ],
                    ),
                  ),
                ],
              ),
              vSpace(5),
              Row(
                children: [
                  Container(
                    width: 250,
                    height: 60,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${MyText.dr}$doctorName $department',
                          style: const TextStyle(
                              color: MyColor.primaryColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 15),
                        ),
                        Text(
                          specialty,
                          style: const TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              vSpace(5),
              DoctorsSortRow(
                  doctorName: doctorName,
                  specialty: specialty,
                  department: department)
            ],
          )
        ],
      ),
    );
  }
}
