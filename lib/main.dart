import 'package:app_uno/Screens/logins/iniciar_sesion.dart';
import 'package:app_uno/Screens/logins/registro.dart';
import 'package:app_uno/Screens/logins/splash.dart';
import 'package:app_uno/Screens/newApp/screens.dart';
import 'package:app_uno/Screens/view_user.dart/view_user.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App',
      initialRoute: "newApp",
      routes: {
         "newApp": (_) => const HomeNewScreen(),
        "splash": (_) => const Splash_Screen(),
        "iniciar_sesion_screen":(_)=> const IniciarSesionScreen(),
        "registro_screen":(_)=> const RegistroScreen(),
        "vier_user": (_) => const User_Screen(),
      },
    );
  }
}

