import 'package:flutter/material.dart';

import 'package:appcine/src/centro/dato/modelos/pelicula.dart';

import 'tabla_info_pelicula.dart';

class MovieInfoTable extends StatelessWidget {
  const MovieInfoTable({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MovieInfoTableItem(title: 'Tipo', content: movie.type),
        MovieInfoTableItem(title: 'Hora', content: '${movie.hours} hora'),
        MovieInfoTableItem(title: 'Director', content: movie.director),
      ],
    );
  }
}