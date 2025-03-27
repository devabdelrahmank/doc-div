import 'package:doc_div/core/my_color.dart';
import 'package:doc_div/core/spacing.dart';
import 'package:doc_div/feature/doctors/doctors.dart';
import 'package:doc_div/feature/doctors/favorite.dart';
import 'package:flutter/material.dart';

class HomeSearch extends StatelessWidget {
  const HomeSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return const Doctors();
              },
            ));
          },
          icon: const Icon(
            size: 30,
            Icons.medical_information_outlined,
            color: MyColor.primaryColor,
          ),
        ),
        IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return const Favorite();
              },
            ));
          },
          icon: const Icon(
            size: 30,
            Icons.favorite_outline,
            color: MyColor.primaryColor,
          ),
        ),
        hSpace(20),
        Expanded(
          child: Container(
            height: 40,
            decoration: BoxDecoration(
                color: MyColor.secondaryColor,
                borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: const Icon(Icons.settings_outlined),
                  ),
                  const Icon(
                    Icons.search,
                    color: MyColor.primaryColor,
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
