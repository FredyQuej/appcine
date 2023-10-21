import 'package:flutter/material.dart';

import 'package:appcine/src/centro/constantes/constantes.dart';
import 'package:appcine/src/centro/dato/modelos/pelicula.dart';

class MovieDateCard extends StatelessWidget {
  const MovieDateCard({
    Key? key,
    required this.date,
    required this.isSelected,
  }) : super(key: key);

  final MovieDate date;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      decoration: BoxDecoration(
        color: isSelected ? const Color.fromARGB(255, 0, 24, 243) : Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        border: Border.all(color: const Color.fromARGB(255, 0, 45, 243)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '${date.day} ${date.month}',
            style: TextStyle(
                color: isSelected ? Colors.white70 : AppColors.primaryColor),
          ),
          const SizedBox(height: 5),
          Text(
            date.hour,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: isSelected ? Colors.white : AppColors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}