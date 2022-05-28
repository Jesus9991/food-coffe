import 'package:app_uno/models/models.dart';
import 'package:flutter/material.dart';


class Splash_Screen extends StatelessWidget {
   
  const Splash_Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return  Scaffold(
      backgroundColor: MainTheme.colorPrincipal,
      body: Container(
        width: size.width,
        child: Stack(
          children:  [
            const _background_widge(), //llamado a background de color amarillo  
            Column(
              children: const [
                _botonesSesions(), //llamado a botones de ingreso 
              ],
            )
          ],
        ),
      )
    );
  }
}

//TODO: background splash
class _background_widge extends StatelessWidget {
  const _background_widge({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height*.4,
      margin: EdgeInsets.only(
        top:size.height*.1,
        left: size.width*.03,
        right: size.width*.03
        ),
       decoration: BoxDecoration(
       color: MainTheme.colorWidgest,
       gradient: LinearGradient(
         colors: MainTheme.gradianteTemaPrimario.colors,
         begin: MainTheme.gradianteTemaPrimario.begin,
         end: MainTheme.gradianteTemaPrimario.end
         ),
       borderRadius: BorderRadius.circular(20)
      ),
      child: Stack(
        children: [
          Image.asset("assets/girs.png"), //imagen de la chica 
           const _textoCasaInteligente(), //llamado a texto casa inteligente

        ],
      ),
      
    );
  }
}

 //TODO: texto de casa inteligente
class _textoCasaInteligente extends StatelessWidget {
  const _textoCasaInteligente({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only
      (left: size.width*.4,top: size.height*.2),
      // color: Colors.red,
       child: 
          Column(
            children: [
              Text("Casa Inteligente", 
              style: MainTheme.titleHeadline1.headline1
        ),
        Text("Tu casa inteligente, en dos pasos",
        style: MainTheme.subtitleSubtitle.subtitle1,
        )
      ],
      ),
        
    );
  }
}

//TODO: botones de iniciar sesion y crear cuenta
class _botonesSesions extends StatelessWidget {
  const _botonesSesions({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     final size = MediaQuery.of(context).size;
    return Container(
      
      width: size.width,
      height: size.height*.3,
      margin: EdgeInsets.only(
        // left: size.width*.2,
        top: size.height*.7 
        ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
             SizedBox(
               height: size.height/15,
               width: size.width/1.5,
               child: ElevatedButton(
                 onPressed: ()  //al ser precionado debe enviar a la pantalla de iniciar sesion
                 {
                   Navigator.pushNamed(context, "iniciar_sesion_screen");
                 },
                  child: const Text("Iniciar sesión"),
                  style: MainTheme.estiloBotonPrimario.style,
                ),
             ),
             const Divider(color: Colors.transparent,),
              SizedBox(
                height: size.height/15,
               width: size.width/1.5,
                child: ElevatedButton(
                 onPressed: ()  //al ser precionado debe enviar a la pantalla de registro 
                 {
                   Navigator.pushNamed(context, "registro_screen");
                 },
                  child: const Text("Crear cuenta"),
                  style: MainTheme.estiloBotonSegundario.style,
                ),
              ),
        ],
      ),
    );
  }
}