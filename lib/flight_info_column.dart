import 'package:flutter/material.dart';

class FlightInfoColumn extends StatelessWidget {
  final String title;
  final String value;
  final bool isLight;

  const FlightInfoColumn({
    required this.title,
    required this.value,
    this.isLight = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: isLight ? Colors.grey.shade600 : Colors.grey,
            fontSize: 12,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: TextStyle(
            color: isLight ? Colors.black : Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
