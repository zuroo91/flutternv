import 'package:flutter/material.dart';

class DateContainer extends StatelessWidget {
  final String day;
  final String date;
  final bool isActive;

  const DateContainer({
    super.key,
    required this.day,
    required this.date,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 76,
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: isActive ? const Color.fromRGBO(135, 173, 255, 1): Colors.transparent,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.grey.shade300,
        ),
      ),
      child: Column(
        children: [
          Text(
            day,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: isActive ? Colors.white : Colors.black
            ),
          ),
        ],
      ),
    );
  }
  }