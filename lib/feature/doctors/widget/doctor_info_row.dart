import 'package:doc_div/core/my_color.dart';
import 'package:doc_div/core/my_text.dart';
import 'package:doc_div/core/spacing.dart';
import 'package:doc_div/feature/doctors/providers/favorites_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DoctorInfoRow extends StatelessWidget {
  final String doctorName;
  final String specialty;
  final String department;

  const DoctorInfoRow({
    super.key,
    required this.doctorName,
    required this.specialty,
    required this.department,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<FavoritesProvider>(
      builder: (context, favoritesProvider, child) {
        final isFavorite = favoritesProvider.isFavorite(doctorName);

        return Row(
          children: [
            Container(
              width: 50,
              height: 22,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    size: 18,
                    color: MyColor.primaryColor,
                  ),
                  Text(
                    '5',
                    style: TextStyle(
                      color: MyColor.primaryColor,
                    ),
                  ),
                ],
              ),
            ),
            hSpace(5),
            Container(
              width: 50,
              height: 22,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.comment_outlined,
                    size: 18,
                    color: MyColor.primaryColor,
                  ),
                  Text(
                    '40',
                    style: TextStyle(
                      color: MyColor.primaryColor,
                    ),
                  ),
                ],
              ),
            ),
            hSpace(10),
            Expanded(
              child: Container(
                height: 22,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.alarm,
                      size: 18,
                      color: MyColor.primaryColor,
                    ),
                    hSpace(5),
                    const Text(
                      MyText.monSat,
                      style: TextStyle(color: MyColor.primaryColor),
                    ),
                  ],
                ),
              ),
            ),
            hSpace(10),
          ],
        );
      },
    );
  }
}
