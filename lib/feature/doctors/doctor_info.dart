import 'package:doc_div/core/my_styles.dart';
import 'package:doc_div/core/my_text.dart';
import 'package:doc_div/core/spacing.dart';
import 'package:doc_div/feature/doctors/widget/custom_app_bar.dart';
import 'package:doc_div/feature/doctors/widget/custom_row.dart';
import 'package:doc_div/feature/doctors/widget/doctor_info_container.dart';
import 'package:doc_div/feature/home/widget/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class DoctorInfo extends StatelessWidget {
  final String doctorName;
  final String specialty;
  final String department;
  const DoctorInfo({
    super.key,
    required this.doctorName,
    required this.specialty,
    required this.department,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: MyText.doctorInfo,
      ),
      bottomNavigationBar: const BottomNavBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomRow(currentPage: MyText.doctors),
              vSpace(10),
              DoctorInfoContainer(
                  doctorName: doctorName,
                  specialty: specialty,
                  department: department),
              vSpace(15),
              Text(
                MyText.profile,
                style: MyStyles.title48Bluew100
                    .copyWith(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              Text(
                MyText.infoLorem,
                style: MyStyles.title12Blackw300.copyWith(fontSize: 14),
              ),
              vSpace(10),
              Text(
                MyText.careerPath,
                style: MyStyles.title48Bluew100
                    .copyWith(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              Text(
                MyText.infoLorem,
                style: MyStyles.title12Blackw300.copyWith(fontSize: 14),
              ),
              vSpace(10),
              Text(
                MyText.highlights,
                style: MyStyles.title48Bluew100
                    .copyWith(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              Text(
                MyText.infoLorem,
                style: MyStyles.title12Blackw300.copyWith(fontSize: 14),
              ),
              vSpace(10),
            ],
          ),
        ),
      ),
    );
  }
}
