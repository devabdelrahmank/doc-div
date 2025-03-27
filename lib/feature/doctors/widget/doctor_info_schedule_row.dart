import 'package:doc_div/core/my_color.dart';
import 'package:doc_div/core/my_text.dart';
import 'package:doc_div/core/spacing.dart';
import 'package:doc_div/feature/doctors/providers/favorites_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DoctorInfoScheduleRow extends StatelessWidget {
  final String doctorName;
  final String specialty;
  final String department;

  const DoctorInfoScheduleRow({
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
              width: 100,
              height: 30,
              decoration: BoxDecoration(
                color: MyColor.primaryColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.calendar_month,
                    color: Colors.white,
                  ),
                  Text(
                    MyText.schedule,
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            const Spacer(),
            InkWell(
              onTap: () {},
              child: const CircleAvatar(
                radius: 14,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.priority_high,
                  color: MyColor.primaryColor,
                  size: 18,
                ),
              ),
            ),
            hSpace(5),
            InkWell(
              onTap: () {},
              child: const CircleAvatar(
                radius: 14,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.question_mark,
                  color: MyColor.primaryColor,
                  size: 18,
                ),
              ),
            ),
            hSpace(5),
            InkWell(
              onTap: () {},
              child: const CircleAvatar(
                radius: 14,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.star_outline,
                  color: MyColor.primaryColor,
                  size: 18,
                ),
              ),
            ),
            hSpace(5),
            InkWell(
              onTap: () {
                favoritesProvider.toggleFavorite(
                  doctorName,
                  department,
                  specialty,
                );
              },
              child: CircleAvatar(
                radius: 14,
                backgroundColor: Colors.white,
                child: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_outline,
                  color: isFavorite ? Colors.red : MyColor.primaryColor,
                  size: 18,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
