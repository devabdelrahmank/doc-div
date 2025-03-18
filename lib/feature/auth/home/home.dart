import 'package:doc_div/core/my_color.dart';
import 'package:doc_div/core/my_images.dart';
import 'package:doc_div/core/my_text.dart';
import 'package:doc_div/core/spacing.dart';
import 'package:doc_div/feature/auth/home/widget/appointment.dart';
import 'package:doc_div/feature/auth/home/widget/bottom_nav_bar.dart';
import 'package:doc_div/feature/auth/home/widget/calendar.dart';
import 'package:doc_div/feature/auth/home/widget/doctor_card.dart';
import 'package:doc_div/feature/auth/home/widget/home_header.dart';
import 'package:doc_div/feature/auth/home/widget/home_search.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Column(
                children: [
                  const HomeHeader(),
                  vSpace(5),
                  const HomeSearch(),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
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
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: SizedBox(
                      height: 320,
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return const DoctorCard(
                            doctorName: MyText.oliviaTurner,
                            department: MyText.md,
                            specialty: MyText.dermatoEndocrinology,
                            imagePath: MyImages.splash,
                            rating: 5,
                            reviews: 60,
                          );
                        },
                        itemCount: 10,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
