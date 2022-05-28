import 'package:flutter/material.dart';
import 'package:app_uno/theme/theme.dart';

class User_Screen extends StatelessWidget {
   
  const User_Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return  Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: MainTheme.colorBotonesSegundarios,
        elevation: 0,
        items: const <BottomNavigationBarItem>[

          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: MainTheme.colorCardSegundario,),
            label: "home"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle, color: MainTheme.colorCardSegundario),
            label: "home"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_rounded, color: MainTheme.colorCardSegundario,),
            label: "setting"
          ),
        ]
        ),
      backgroundColor: MainTheme.colorPrincipal,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Magnun mefisto"),
        backgroundColor: MainTheme.colorAppBar,
        titleTextStyle: MainTheme.appbarHeadline2.headline2,
      ),
      body:Container(
        
      )
    );
  }
}


