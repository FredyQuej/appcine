import 'package:flutter/material.dart';

import 'package:appcine/src/centro/constantes/constantes.dart';
import 'package:appcine/src/centro/dato/modelos/pelicula.dart';
import 'package:appcine/src/caracteristicas/reserva/pagina_reserva.dart';

class BookButton extends StatelessWidget {
  const BookButton({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        const transitionDuration = Duration(milliseconds: 200);

        Navigator.of(context).push(
          PageRouteBuilder(
            transitionDuration: transitionDuration,
            reverseTransitionDuration: transitionDuration,
            pageBuilder: (_, animation, ___) {
              return FadeTransition(
                opacity: animation,
                child: BookingPage(movie: movie),
              );
            },
          ),
        );
      },
      child: Container(
        decoration: const BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
      ),
    );
  }
}