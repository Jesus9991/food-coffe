// import 'package:js';
import 'package:flutter/material.dart';



class MainTheme{

  //* colores principales de la app
   static const colorPrincipal = Color(0xff03071E);
   static const colorAppBar = Color(0xff03071E);
   static const colorBotones = Color(0xffFAA307);
   static const colorWidgest = Color(0xffFAA307);
   static const colorCard = Color(0xff2F3039);
   static const colorCardSegundario = Color(0xffC4C4C4);
   static const colorBotonesSegundarios = Color(0xff2F3039);
 

  //* colores de fuentes
    static const colorLetras = Color(0xffFFFFFF); 
     static const colorLetrasSegundarias = Color(0xffC4C4C4);


  //* colores de iconos  
  static const colorIconos = Color(0xffC4C4C4);
  static const colorSelecionarIcono = Color(0xffFAA307);

 //* colores de gradiante 
    static const colorGradiante1 = Color(0xffFAA307);
    static const colorGradiante2 = Color.fromRGBO(3, 7, 30, .8);
     static const colorGradiante3 = Color(0xffC4C4C4);


  //* tipo de letras de la app (Titulos headline1 en los botones y titulos)
   static const titleHeadline1 = TextTheme(
     headline1:TextStyle(
       color: colorLetras, 
       fontWeight: FontWeight.bold,
        fontSize: 25)
         );

  //* fuente para el appbar(fuentes Appbar headline2 y palabras arriba del login)
    static const appbarHeadline2 = TextTheme(
      headline2: TextStyle(
       color: colorLetrasSegundarias,
       fontWeight: FontWeight.w300,
       fontSize: 20
      )
    );

   //* fuentes subtitle subtitle 1 (letra para el texto dentro el login)
    static const subtitleSubtitle = TextTheme(
      subtitle1: TextStyle(
       color: colorLetras,
       fontWeight: FontWeight.w200,
       fontSize: 15
      )
    );
     //!seguir agregando fuentes

  //* estilo del gradiante primario (colores)
   static const gradianteTemaPrimario = LinearGradient(
     colors:
     [
      colorGradiante1,
      colorGradiante2
     ],
     begin:Alignment.topRight,
     end:( Alignment.bottomRight)
     );

     //* estilo del gradiante segundario (colores)
   static const gradianteTemaSegundario = LinearGradient(
     colors:
     [
      colorGradiante3,
      colorGradiante2
     ],
     begin:Alignment.topRight,
     end:( Alignment.bottomRight)
     );    
   
 
  //*estilo de boton de ingreso primario(color gris) 
    static final estiloBotonPrimario = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
       elevation: 0,
       primary: colorBotones,
       textStyle: const TextStyle(
         fontWeight: FontWeight.bold,
         fontSize: 20,
         color: colorLetras,
       )
      )
    );

 //*estilo de boton de ingreso segundario (color gris) 
    static final estiloBotonSegundario = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
       elevation: 0,
       primary:colorBotonesSegundarios ,
       textStyle: const TextStyle(
         fontWeight: FontWeight.bold,
         fontSize: 20,
         color: colorLetras,
       )
      )
    );
    
  //* temas del cuerpo de la app 
  static final ThemeData lightTheme = ThemeData.dark().copyWith(
    visualDensity:  VisualDensity.adaptivePlatformDensity,
    backgroundColor: colorPrincipal,
    scaffoldBackgroundColor: colorPrincipal,
    colorScheme: ColorScheme.fromSwatch(
      accentColor: colorBotones, //!probando, posible cambio 
    ),
    

  //* tema del appBar
    primaryColor: colorPrincipal,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      backgroundColor: colorAppBar,
      titleTextStyle: TextStyle(
       color: colorLetras,
       fontSize: 20,
       fontWeight: FontWeight.w300 
      ),
      elevation: 0,
    ),

  //* tema de los botones de navegacion
   bottomNavigationBarTheme: const BottomNavigationBarThemeData(
     elevation: 0,
     selectedItemColor: colorPrincipal
  ),
   
  //* tema de boton flotante 
   floatingActionButtonTheme: const FloatingActionButtonThemeData(
     backgroundColor: colorBotones,
     elevation: 0,
   ),
   pageTransitionsTheme: const PageTransitionsTheme(
     builders: <TargetPlatform,PageTransitionsBuilder>{
       TargetPlatform.android: ZoomPageTransitionsBuilder(),
       TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
     }
   ),



); 

 //* tema input decoracion
 
} 