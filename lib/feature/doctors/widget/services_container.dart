import 'package:doc_div/core/my_color.dart';
import 'package:doc_div/core/my_text.dart';
import 'package:doc_div/core/spacing.dart';
import 'package:flutter/material.dart';

class ServicesContainer extends StatefulWidget {
  final String title;
  const ServicesContainer({
    super.key,
    required this.title,
  });

  @override
  State<ServicesContainer> createState() => _ServicesContainerState();
}

class _ServicesContainerState extends State<ServicesContainer> {
  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () => setState(() => _isExpanded = !_isExpanded),
          child: Container(
            padding: const EdgeInsets.all(15),
            margin: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              color: MyColor.primaryColor,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Row(
              children: [
                const Icon(Icons.favorite, color: Colors.white),
                hSpace(8),
                Text(
                  widget.title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Spacer(),
                CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.white,
                  child: Icon(
                    _isExpanded
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                    color: MyColor.primaryColor,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
        ),
        if (_isExpanded)
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
                color: MyColor.secondaryColor,
                borderRadius: BorderRadius.circular(20)),
            child: const Text(
              MyText.servicesLorem,
              textAlign: TextAlign.center,
            ),
          ),
        vSpace(10),
        if (_isExpanded)
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
              color: MyColor.secondaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Center(
              child: Text(
                MyText.lookingDoctors,
                style: TextStyle(
                    color: MyColor.primaryColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 20),
              ),
            ),
          ),
      ],
    );
  }
}
