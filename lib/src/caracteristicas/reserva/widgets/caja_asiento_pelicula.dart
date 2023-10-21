import 'package:flutter/material.dart';

import 'package:appcine/src/centro/dato/modelos/pelicula.dart';

class MovieSeatBox extends StatefulWidget {
  const MovieSeatBox({
    Key? key,
    required this.seat,
  }) : super(key: key);

  final Seat seat;

  @override
  State<MovieSeatBox> createState() => _SeatBoxState();
}

class _SeatBoxState extends State<MovieSeatBox> {
  @override
  Widget build(BuildContext context) {
    final color = widget.seat.isHidden
        ? Colors.white
        : widget.seat.isOcuppied
            ? Colors.black
            : widget.seat.isSelected
                ? const Color.fromARGB(255, 15, 1, 1)
                : Colors.grey.shade200;
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.seat.isSelected = !widget.seat.isSelected;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(
            Radius.circular(3),
          ),
        ),
      ),
    );
  }
}