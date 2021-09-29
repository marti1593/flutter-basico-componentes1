import 'package:flutter/material.dart';
import 'package:componente_vsc_01/helpers/dialogs.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange[700],
          title: Text("Componentes Flutter"),
        ),
        body: Builder(
          builder:(BuildContext context) => SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(5.0),
              margin: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(blurRadius: 50, color: Colors.purple, offset: Offset(0,3))
                ],
                border: Border.all(color: Colors.purple)
              ),
              child: Column(
                children:<Widget>[
                  Text(
                    "Bienvenido a mi app",
                    style: TextStyle(
                        color: Colors.green,
                        backgroundColor: Colors.yellow,
                        fontSize: 26.0,
                        fontWeight: FontWeight.w700),
                    
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/image/frid.jpg', height: 350,),
                  ),
                  //Image.asset('assets/image/flores.jpg', height: 200,),
                  //Image.network("https://images.freeimages.com/images/large-previews/9b6/among-giants-1375605.jpg", height: 350,),
                  Text(
                    "Esta es la app de componentes del curso",
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 22.0,
                        fontWeight: FontWeight.w400),
                    
                  ),
                  
                  Padding(
                    padding:EdgeInsets.all(50.0),
                    child: ElevatedButton(
                      onPressed: () =>contacto(context),
                      child: Text("Contacto"),
                    style: ElevatedButton.styleFrom(
                      primary: Theme.of(context).primaryColor,
                    )),
                  ),
                  
                  
                    
                ]
              ),
            ),
          ),
        ),
        ),
      
    );
  }
 void contacto(BuildContext context){
  infoDialog(context, "Contacto", "Aqui puedes contactarme");

  }
}
