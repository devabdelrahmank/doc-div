import 'package:doc_div/core/my_color.dart';
import 'package:doc_div/core/my_text.dart';
import 'package:doc_div/core/spacing.dart';
import 'package:doc_div/feature/doctors/providers/favorites_provider.dart';
import 'package:doc_div/feature/doctors/widget/custom_app_bar.dart';
import 'package:doc_div/feature/doctors/widget/custom_row.dart';
import 'package:doc_div/feature/doctors/widget/favorite_card.dart';
import 'package:doc_div/feature/doctors/widget/services_container.dart';
import 'package:doc_div/feature/home/widget/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  bool isDoctorsSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: MyText.favorite),
      bottomNavigationBar: const BottomNavBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
              const CustomRow(currentPage: MyText.favorite),
              vSpace(30),
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          isDoctorsSelected = true;
                        });
                      },
                      style: ButtonStyle(
                        padding: const WidgetStatePropertyAll(
                          EdgeInsets.symmetric(vertical: 15),
                        ),
                        backgroundColor: WidgetStatePropertyAll(
                          isDoctorsSelected
                              ? MyColor.primaryColor
                              : MyColor.secondaryColor,
                        ),
                      ),
                      child: Text(
                        MyText.doctors,
                        style: TextStyle(
                          color: isDoctorsSelected
                              ? Colors.white
                              : MyColor.primaryColor,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  hSpace(10),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          isDoctorsSelected = false;
                        });
                      },
                      style: ButtonStyle(
                          padding: const WidgetStatePropertyAll(
                              EdgeInsets.symmetric(vertical: 15)),
                          backgroundColor: WidgetStatePropertyAll(
                            !isDoctorsSelected
                                ? MyColor.primaryColor
                                : MyColor.secondaryColor,
                          )),
                      child: Text(
                        MyText.services,
                        style: TextStyle(
                            color: !isDoctorsSelected
                                ? Colors.white
                                : MyColor.primaryColor,
                            fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
              vSpace(10),
              isDoctorsSelected
                  ? Consumer<FavoritesProvider>(
                      builder: (context, favoritesProvider, child) {
                        final favorites = favoritesProvider.favorites;
                        if (favorites.isEmpty) {
                          return SizedBox(
                            height: MediaQuery.of(context).size.height * 0.5,
                            child: const Center(
                              child: Text(
                                'No favorite doctors yet',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: MyColor.primaryColor,
                                ),
                              ),
                            ),
                          );
                        }
                        return Column(
                          children: favorites
                              .map((doctor) => FavoriteCard(
                                    doctorName: doctor.name,
                                    department: doctor.department,
                                    specialty: doctor.specialty,
                                  ))
                              .toList(),
                        );
                      },
                    )
                  : const Column(
                      children: [
                        ServicesContainer(
                          title: MyText.dermatoEndocrinology,
                        ),
                        ServicesContainer(
                          title: MyText.cosmeticBioengineering,
                        ),
                        ServicesContainer(
                          title: MyText.dermatoGenetics,
                        ),
                        ServicesContainer(
                          title: MyText.solarDermatology,
                        ),
                        ServicesContainer(
                          title: MyText.dermatoEndocrinology,
                        ),
                      ],
                    )
            ],
          ),
        ),
      ),
    );
  }
}
