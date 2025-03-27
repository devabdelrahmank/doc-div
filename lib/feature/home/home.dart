import 'package:doc_div/core/my_color.dart';
import 'package:doc_div/core/my_images.dart';
import 'package:doc_div/core/my_text.dart';
import 'package:doc_div/core/spacing.dart';
import 'package:doc_div/feature/home/widget/appointment.dart';
import 'package:doc_div/feature/home/widget/bottom_nav_bar.dart';
import 'package:doc_div/feature/home/widget/calendar.dart';
import 'package:doc_div/feature/home/widget/doctor_card.dart';
import 'package:doc_div/feature/home/widget/home_header.dart';
import 'package:doc_div/feature/home/widget/home_search.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Column(
                  children: [
                    const HomeHeader(),
                    vSpace(20),
                    const HomeSearch(),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 260,
                padding: const EdgeInsets.all(20),
                color: MyColor.secondaryColor,
                child: Column(
                  children: [
                    const Calendar(),
                    vSpace(10),
                    const Expanded(
                      child: Appointment(),
                    )
                  ],
                ),
              ),
              vSpace(5),
              const DoctorCard(
                  doctorName: MyText.oliviaTurner,
                  department: MyText.md,
                  specialty: MyText.dermatoEndocrinology,
                  imagePath: MyImages.olivia,
                  rating: 5,
                  reviews: 60),
              const DoctorCard(
                  doctorName: MyText.alexanderBennett,
                  department: MyText.phd,
                  specialty: MyText.dermatoGenetics,
                  imagePath: MyImages.alexander,
                  rating: 4.5,
                  reviews: 40),
              const DoctorCard(
                  doctorName: MyText.sophiaMartinez,
                  department: MyText.phd,
                  specialty: MyText.cosmeticBioengineering,
                  imagePath: MyImages.sophia,
                  rating: 5,
                  reviews: 150),
              const DoctorCard(
                  doctorName: MyText.michaelDavidson,
                  department: MyText.md,
                  specialty: MyText.nanoDermatology,
                  imagePath: MyImages.michael,
                  rating: 4.8,
                  reviews: 90),
            ],
          ),
        ),
      ),
    );
  }
}
