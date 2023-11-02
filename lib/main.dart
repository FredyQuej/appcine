import 'dart:io';
import 'package:appcine/screens/login_screen.dart'; 
import 'package:firebase_core/firebase_core.dart'; 
import 'package:flutter/material.dart';
//import 'screens/login_screen.dart';
//import 'src/app.dart';
//import 'model/user_model.dart';


//void main() => runApp(const App());
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

Platform.isAndroid?
await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyBM-9vurjyxeM3Epqn8-lwxvIsbsCdo2z8",
      appId: "1:47805522790:android:4a98315ed121de4ac75ea7",
      messagingSenderId: "47805522790",
      projectId: "appcine-11ae2",
    ),
 )

:await Firebase.initializeApp();
 runApp(MyApp());
 // runApp(const App());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inicio de Sesion con Correo y Contraseña',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}