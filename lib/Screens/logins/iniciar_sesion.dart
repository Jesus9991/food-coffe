import 'package:flutter/material.dart';
import 'package:app_uno/models/models.dart';
class IniciarSesionScreen extends StatelessWidget {
   
  const IniciarSesionScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Iniciar sesión"),
        centerTitle: true,
        titleTextStyle: MainTheme.appbarHeadline2.headline2,
        backgroundColor: MainTheme.colorAppBar,
      ),
     backgroundColor: MainTheme.colorPrincipal,
      body: Stack(
        children: 
         
        [
         const _background(),
         SingleChildScrollView( //!demasioado scroll 
           child: Column(       
             children: const [
               _loginForm(), //llamado a formulario
             ],
           ),
         ), //llamado a formulario
        ],
      )
    );
  }
}

//TODO: Background diseño 
class _background extends StatelessWidget {
  const _background({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container
    (
      width: size.width,
      height: size.height*.4,
      margin: EdgeInsets.only
      (
        top:size.height/70,
        left: size.width*.03,
        right: size.width*.03
        ),
        decoration: BoxDecoration
        (
       color: MainTheme.colorCardSegundario,
       borderRadius: BorderRadius.circular(20),
       gradient: LinearGradient
       (
         colors: MainTheme.gradianteTemaSegundario.colors,
         begin: MainTheme.gradianteTemaSegundario.begin,
         end: MainTheme.gradianteTemaSegundario.end,
         ),
      ),
      child: Stack
      (
        children: 
        [
          Image.asset("assets/casual-lifeDos.png"), //imagen de la chica 
         
        ],
        
      ),
    );
  }
}

//TODO: formulario 

class _loginForm extends StatelessWidget {
  const _loginForm({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return  Container
      (
        // color: Colors.red,
         width: size.width,
         height: size.height/2.5,
         margin: EdgeInsets.only(
           top: size.height/2.2,
           left: size.width*.1,
           right: size.width*.1
           ),
        child: Form
        (
          child: Column
          (
            children:
             [  //!hacer el textform Style desde theme

              //correo electronico
              TextFormField( 
               keyboardType: TextInputType.emailAddress,
               decoration:  InputDecoration(
                 hintText: "ejemplo@gmail.com",
                 hintStyle: MainTheme.subtitleSubtitle.subtitle1,
                  filled: true,
                  fillColor: MainTheme.colorBotonesSegundarios,
                  border: OutlineInputBorder(
                    borderRadius:BorderRadius.circular(10),
                    borderSide: const BorderSide(color: MainTheme.colorPrincipal),
                 ), 
                 focusedBorder: OutlineInputBorder(
                  borderRadius:BorderRadius.circular(10),
                  borderSide: const BorderSide(
                      color: MainTheme.colorBotones
                  )
                 ),
               ),
              ),

              //ingresar contraseña
              Divider(height: size.height/20,color: Colors.transparent,),
              TextFormField( 
               keyboardType: TextInputType.emailAddress,
               decoration:  InputDecoration(
                 hintText: "***********",
                 hintStyle: MainTheme.subtitleSubtitle.subtitle1,
                  filled: true,
                  fillColor: MainTheme.colorBotonesSegundarios,
                  border: OutlineInputBorder(
                    borderRadius:BorderRadius.circular(10),
                     borderSide: const BorderSide(color: MainTheme.colorPrincipal),
                 ), 
                 focusedBorder: OutlineInputBorder(
                  borderRadius:BorderRadius.circular(10),
                  borderSide: const BorderSide(
                      color: MainTheme.colorBotones
                  )
                 ),
               ),
              ),

               //boton de ingreso
                Divider(height: size.height/20,color: Colors.transparent,),
              SizedBox(
               height: size.height/15,
               width: size.width/1.5,
               child: ElevatedButton(
                 onPressed: ()  //al ser precionado debe enviar a la pantalla de iniciar sesion
                 {
                   Navigator.pushNamed(context, "vier_user");
                 },
                  child: const Text("Iniciar sesión"),
                  style: MainTheme.estiloBotonPrimario.style,
                ),
             ),
             //Texto olvide mi contraseña
              Divider(height: size.height/100,color: Colors.transparent,),
             TextButton(
               onPressed: (){}, 
               child: const Text("Olvide mi contraseña",
               style: TextStyle(color: MainTheme.colorLetras) //!crear un TextbuttonTheme en Theme
               
               )
              )
            ],
          ) 
        ),
    
      
    );
  }
}