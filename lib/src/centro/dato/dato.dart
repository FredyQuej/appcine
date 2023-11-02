import 'package:flutter/material.dart';


import 'modelos/pelicula.dart';

final section1 = List.generate(
  16,
  (index) => Seat(
    isHidden: [0, 1, 4].contains(index),
    isOcuppied: [].contains(index),
  ),
);

final section2 = List.generate(
  16,
  (index) => Seat(
    isHidden: [4, 5, 6, 7].contains(index),
    isOcuppied: [12, 13].contains(index),
  ),
);

final section3 = List.generate(
  16,
  (index) => Seat(
    isHidden: [2, 3, 7].contains(index),
    isOcuppied: [13, 14, 15].contains(index),
  ),
);

final section4 = List.generate(
  20,
  (index) => Seat(
    isHidden: [].contains(index),
    isOcuppied: [1, 2, 3].contains(index),
  ),
);

final section5 = List.generate(
  20,
  (index) => Seat(
    isHidden: [].contains(index),
    isOcuppied: [].contains(index),
  ),
);

final section6 = List.generate(
  20,
  (index) => Seat(
    isHidden: [].contains(index),
    isOcuppied: [14].contains(index),
  ),
);

final seats = [
  section1,
  section2,
  section3,
  section4,
  section5,
  section6,
];

const seatTypes = [
  SeatType(name: 'Disponible', color: Color.fromARGB(255, 158, 158, 158)),
  SeatType(name: 'Reservada', color: Colors.black),
  SeatType(name: 'Seleccion', color: Color.fromARGB(255, 7, 1, 0)),
];

const dates = [
  MovieDate(day: 11, month: 'OCTUBRE', hour: '06:00PM'),
  MovieDate(day: 11, month: 'OCTUBRE', hour: '08:00PM'),
  MovieDate(day: 11, month: 'OCTUBRE', hour: '09:00PM'),
  MovieDate(day: 11, month: 'OCTUBRE', hour: '10:00PM'),
];

final movies = [
  Movie(
    name: 'Encanto',
    image: 'assets/images/encanto.jpeg',
    screenPreview: 'assets/images/encanto.jpeg',
    description:
       ' '
        '',
    type: 'Fantasia',
    hours: 2,
    director: 'Byron',
    stars: 5,
    actors: [
      'Stephanie Beatriz',
      'Sarah Nicole',
      'Wilmer',
      'Diana Guerrero',
    ],
    dates: dates,
    seats: seats,
  ),
  Movie(
    name: 'Pinocho',
    image: 'assets/images/descarga.jpg',
    screenPreview: 'assets/images/descarga.jpg',
    description:
        ' '
        '',
    type: 'Fantasia',
    hours: 2,
    director: 'Robert Zemeckis',
    stars: 5,
    actors: [
      'Tom Hanks',
      'Benjamin',
      'Luke Evans',
      'Marwan Kenzari',
    ],
    dates: dates,
    seats: seats,
  ),
  Movie(
    name: 'Capitana',
    image: 'assets/images/capitana.jpg',
    screenPreview: 'assets/images/capitana.jpg',
    description:
        ''
        '',
    type: 'Ficcion',
    hours: 2,
    director: 'Anna Boden',
    stars: 5,
    actors: [
      'Brie Larson',
      'Lee Pace',
      'Gemma Chan',
      'Clark Gregg',
      'Jude Law',
    ],
    dates: dates,
    seats: seats,
  ),
  Movie(
    name: 'AQUAMAN',
    image: 'assets/images/aquaman.png',
    screenPreview: 'assets/images/aquaman.png',
    description:
        ''
        '',
    type: 'Accion',
    hours: 2,
    director: 'James Wan',
    stars: 5,
    actors: [
      'Jason Momoa',
      'Willem Dafoe',
      'Patrick Wilson',
      'Nicole Kidman',
      'Dolph Lundgren',
    ],
    dates: dates,
    seats: seats,
  ),
];