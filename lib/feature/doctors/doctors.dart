import 'package:doc_div/core/my_text.dart';
import 'package:doc_div/core/spacing.dart';
import 'package:doc_div/feature/doctors/widget/custom_app_bar.dart';
import 'package:doc_div/feature/doctors/widget/custom_row.dart';
import 'package:doc_div/feature/doctors/widget/doctors_sort.dart';
import 'package:doc_div/feature/home/widget/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class Doctors extends StatelessWidget {
  const Doctors({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: MyText.doctors),
      bottomNavigationBar: const BottomNavBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
              const CustomRow(currentPage: MyText.doctors),
              vSpace(20),
              const DoctorsSort(
                doctorName: MyText.alexanderBennett,
                specialty: MyText.dermatoGenetics,
                department: MyText.phd,
              ),
              const DoctorsSort(
                doctorName: MyText.michaelDavidson,
                specialty: MyText.solarDermatology,
                department: MyText.md,
              ),
              const DoctorsSort(
                doctorName: MyText.oliviaTurner,
                specialty: MyText.dermatoEndocrinology,
                department: MyText.md,
              ),
              const DoctorsSort(
                doctorName: MyText.sophiaMartinez,
                specialty: MyText.cosmeticBioengineering,
                department: MyText.phd,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
