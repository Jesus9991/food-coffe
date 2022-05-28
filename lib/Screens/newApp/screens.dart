import 'package:app_uno/models/models.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import "package:flutter_feather_icons/flutter_feather_icons.dart";
import 'package:flutter/material.dart';

class HomeNewScreen extends StatefulWidget {
   
  const HomeNewScreen({Key? key}) : super(key: key);

  @override
  State<HomeNewScreen> createState() => _HomeNewScreenState();
}

class _HomeNewScreenState extends State<HomeNewScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        color: const Color(0x00ffffff), /*color de la barra de fondo */
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical:20),
          child: GNav(
            tabBorderRadius: 25,
             iconSize: 25,
            gap: 8,
            padding: const EdgeInsets.all(20),
            backgroundColor: const Color(0x00ffffff) ,/*color de la barra */
            color: const Color(0xfff191919),/*color de iconos */
            tabBackgroundColor: const Color(0xffa8dcd1).withOpacity(.3),
            tabs: 
            const [
             GButton(
               icon: Icons.home_outlined, 
               text: "Inicio",textStyle: TextStyle(fontWeight: FontWeight.w300,fontSize: 15),),
                GButton(
               icon: Icons.person_outline_outlined,
                 text: "Perfil",textStyle: TextStyle(fontWeight: FontWeight.w300,fontSize: 15)
               ),
                GButton(
               icon: Icons.shopping_bag_outlined
               , text: "Compras",textStyle: TextStyle(fontWeight: FontWeight.w300,fontSize: 15)
               ),
                 GButton(
               icon: Icons.support_agent_outlined,
               text: "Soporte",textStyle: TextStyle(fontWeight: FontWeight.w300,fontSize: 15)
               )
            ]
          ),
        ),
      ),
      body: Column(
        children: 
        const [
          _buscador(), /*llamado a el buscador */
          Divider(height: 20,color: Colors.transparent,),
          _ofertas(), /*llamado a ofertas */
            Divider(height: 20,color: Colors.transparent,),
          _categorias() /*llamado a categorias */
      ],
    ),
  );
  }
}

//Todo buscador 
class _buscador extends StatelessWidget {
  const _buscador({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height/17,
      margin: EdgeInsets.only(top: size.height/10,left: 20,right: 20),
      decoration:  BoxDecoration(
         color: const Color(0xffa8dcd1).withOpacity(.3),
         borderRadius: BorderRadius.circular(20)
      ),
      child: Row( mainAxisAlignment: MainAxisAlignment.start,
        children: 
        [
          IconButton(
            iconSize: 30,
            onPressed: (){}, 
            icon: const Icon(Icons.search_outlined)
          ),
          const Text("Busca tu comida favorita",style:TextStyle(fontWeight: FontWeight.w300,fontSize: 15)),
          
         ],
      ),

    );
  }
}

//todo card de oferta

class _ofertas extends StatelessWidget {
  const _ofertas({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width:size.width,
      height: size.height*.2,
      margin: EdgeInsets.only(left: size.width/20,right: size.width/20),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20),
        image: const DecorationImage(
          opacity: .7,
          image: AssetImage("assets/maple-bourbon-burger.jpg"),fit: BoxFit.cover,
          
        ),
      ),
      child: Column( 
        children: [
          Row(
            children: const [
              Text("Hamburguesa", 
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,fontSize: 40),
                ),
            ],
          ),
             Row(
               children: const [
                 Text("Descuento de", 
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w300,fontSize: 20),
            ),
            Text(" 30%",style: TextStyle(color: Color(0xfff1fd224),fontWeight: FontWeight.w300,fontSize: 20),)
            ],
          )
        ],
      ),
    );
  }
}

//todo Categorias 
class _categorias extends StatelessWidget {
  const _categorias({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     final size = MediaQuery.of(context).size;
    return Container(
      height: size.height*.1,
      width: size.width,
      
      child: SingleChildScrollView( scrollDirection:Axis.horizontal ,
        child: Row(
          children:  [
            Card( //* todo
              elevation: 0,
              color: Color(0xfffa8dcd1).withOpacity(0.3),
             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              child: SizedBox(
                height: 100,
                width: 100,
                child: Column(
                  children: 
                  [
                   IconButton(
                     onPressed: (){}, 
                     icon: const Icon(Icons.fastfood_outlined)
                     ),
                     const Text("Todo",style: TextStyle(fontWeight: FontWeight.w300),)
                  ],
                ),
              ),
            ),
            Card( //* cafes
              elevation: 0,
              color: Color(0xfffa8dcd1).withOpacity(0.3),
             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              child: SizedBox(
                height: 100,
                width: 100,
                child: Column(
                  children: 
                  [
                   IconButton(
                     onPressed: (){}, 
                     icon: const Icon(Icons.free_breakfast_outlined)
                     ),
                     const Text("Cafes",style: TextStyle(fontWeight: FontWeight.w300),)
                  ],
                ),
              ),
            ),
            Card( //* saludable
              elevation: 0,
              color: Color(0xfffa8dcd1).withOpacity(0.3),
             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              child: SizedBox(
                height: 100,
                width: 100,
                child: Column(
                  children: 
                  [
                   IconButton(
                     onPressed: (){}, 
                     icon: const Icon(Icons.soup_kitchen_outlined)
                     ),
                     const Text("Saludable",style: TextStyle(fontWeight: FontWeight.w300),)
                  ],
                ),
              ),
            ),
            Card( //* espagetis
            color: Color(0xfffa8dcd1).withOpacity(0.3),
             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              elevation: 0,
              child: SizedBox(
                height: 100,
                width: 100,
                child: Column(
                  children: 
                  [
                   IconButton(
                     onPressed: (){}, 
                     icon: const Icon(Icons.sports_bar_outlined)
                     ),
                     const Text("Cerveza",style: TextStyle(fontWeight: FontWeight.w300),)
                  ],
                ),
              ),
            ),
           ],
           
        ),
      ),
    );
  }
}