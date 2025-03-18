import 'package:doc_div/core/my_color.dart';
import 'package:flutter/material.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  int _selectedDay = 2; // Wednesday (index 2)
  final List<String> _days = ['MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT'];
  final List<int> _dates = [9, 10, 11, 12, 13, 14];
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        6,
        (index) => GestureDetector(
          onTap: () {
            setState(() {
              _selectedDay = index;
            });
          },
          child: Container(
            width: 50,
            height: 65,
            decoration: BoxDecoration(
              color:
                  _selectedDay == index ? MyColor.primaryColor : Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  _dates[index].toString(),
                  style: TextStyle(
                    color: _selectedDay == index ? Colors.white : Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  _days[index],
                  style: TextStyle(
                    color: _selectedDay == index ? Colors.white : Colors.black,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
