import 'package:flutter/material.dart';

import 'centro/constantes/constantes.dart';
import 'caracteristicas/peliculas/pagina_peliculas.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appName,
      theme: AppTheme.light,
      home: const MoviesPage(),
    );
  }
}