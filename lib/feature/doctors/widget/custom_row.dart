import 'package:doc_div/core/my_color.dart';
import 'package:doc_div/core/my_text.dart';
import 'package:doc_div/core/spacing.dart';
import 'package:doc_div/feature/doctors/doctors.dart';
import 'package:doc_div/feature/doctors/favorite.dart';
import 'package:doc_div/feature/doctors/female.dart';
import 'package:doc_div/feature/doctors/male.dart';
import 'package:doc_div/feature/doctors/rating.dart';
import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  final String currentPage;

  const CustomRow({super.key, required this.currentPage});

  @override
  Widget build(BuildContext context) {
    Color getIconColor(String page) =>
        currentPage == page ? MyColor.primaryColor : MyColor.secondaryColor;

    Color getTextColor(String page) =>
        currentPage == page ? Colors.white : MyColor.primaryColor;

    IconData getIcon(String page, IconData filledIcon, IconData outlinedIcon) =>
        currentPage == page ? filledIcon : outlinedIcon;

    return Row(
      children: [
        const Text(MyText.sortBy),
        hSpace(5),
        InkWell(
          onTap: () {
            Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) {
                return const Doctors();
              },
            ));
          },
          child: Container(
            width: 60,
            height: 25,
            decoration: BoxDecoration(
              color: getIconColor(MyText.doctors),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Text(
                MyText.sort,
                style: TextStyle(color: getTextColor(MyText.doctors)),
              ),
            ),
          ),
        ),
        hSpace(5),
        InkWell(
          onTap: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return const Rating();
            }));
          },
          child: CircleAvatar(
            radius: 13,
            backgroundColor: getIconColor(MyText.rating),
            child: Icon(
              getIcon(MyText.rating, Icons.star, Icons.star_border_outlined),
              color: getTextColor(MyText.rating),
              size: 18,
            ),
          ),
        ),
        hSpace(5),
        InkWell(
          onTap: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return const Favorite();
            }));
          },
          child: CircleAvatar(
            radius: 13,
            backgroundColor: getIconColor(MyText.favorite),
            child: Icon(
              getIcon(MyText.favorite, Icons.favorite, Icons.favorite_outline),
              color: getTextColor(MyText.favorite),
              size: 18,
            ),
          ),
        ),
        hSpace(5),
        InkWell(
          onTap: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return const Female();
            }));
          },
          child: CircleAvatar(
            radius: 13,
            backgroundColor: getIconColor(MyText.female),
            child: Icon(
              Icons.female,
              color: getTextColor(MyText.female),
              size: 18,
            ),
          ),
        ),
        hSpace(5),
        InkWell(
          onTap: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return const Male();
            }));
          },
          child: CircleAvatar(
            radius: 13,
            backgroundColor: getIconColor(MyText.male),
            child: Icon(
              Icons.male,
              color: getTextColor(MyText.male),
              size: 18,
            ),
          ),
        ),
      ],
    );
  }
}
