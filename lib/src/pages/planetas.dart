import 'package:flutter/material.dart';
import 'dart:ui';

class Planetas extends StatelessWidget {
    Color _fondo =  Color.fromRGBO(139, 101, 247, 1.0);
    TextStyle colorLetra = TextStyle(color: Color.fromRGBO(172, 153, 225, 1.0),fontSize: 12.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        title: Text('Sistema Solar',style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold),),
      ),
      body: Stack(
        children: <Widget>[
                _fondoApp(),
           SingleChildScrollView(
            child: Column(
              children: <Widget>[
                tarjeta('Sol','Milkyway Galaxy','assets/sol.png'),
                tarjeta('Tierra','Milkyway Galaxy','assets/tierra.png'),
                tarjeta('Mercurio','Milkyway Galaxy','assets/mercurio.png'),
                tarjeta('Venus','Milkyway Galaxy','assets/venus.png'),
                tarjeta('Marte','Milkyway Galaxy','assets/marte.png'),
                tarjeta('Luna','Milkyway Galaxy','assets/luna.png'),
                tarjeta('Neptuno','Milkyway Galaxy','assets/neptuno.png'),
                tarjeta('Urano','Milkyway Galaxy','assets/urano.png'),
                tarjeta('Saturno','Milkyway Galaxy','assets/saturno.png'),
                tarjeta('Jupiter','Milkyway Galaxy','assets/jupiter.png'),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
  }

  Widget tarjeta(String titulo, String subtitulo, String planeta) {
    return Stack(
      children: <Widget>[
       Container(
        padding: EdgeInsetsDirectional.fromSTEB(70.0, 10.0, 25.0, 5.0),
        height: 140.0,
        child: Card(
          color: Color.fromRGBO(57, 32, 129, 1.0),
          elevation: 10.0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          child: Column(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.check_circle, color: Colors.blue,size: 0.0,),
                title: Text(titulo,style: TextStyle(color: Colors.white,)),
                subtitle: Text(subtitulo, style: colorLetra,),
              ),
             Container(
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: <Widget>[
                   Container(
                     padding: EdgeInsets.only(left: 35.0),
                     child: Row(
                       children: <Widget>[
                         Icon(Icons.location_on,color: _fondo,),
                         Text('3.711 m/s', style: colorLetra,),
                       ],
                     ),
                   ),
                   Row(
                     children: <Widget>[
                       Icon(Icons.arrow_downward,color: _fondo,),
                       Text('3.711 m/s', style: colorLetra,),
                     ],
                   ),
                 ],
               ),
             )
            ],
          ),
        ),
      ),
      imagenPlantea(planeta),
      ],
    );
  }

   
  Widget _fondoApp() {
    final background = Container(
      width: double.infinity,
      height: double.infinity,
      color: _fondo,
    );

    return background;
  }

Widget imagenPlantea(String imagen){
  return Container(
    padding: EdgeInsetsDirectional.fromSTEB(27.0, 28.0, 25.0, 5.0),
    height: 120.0,
    child: Image(
      image: AssetImage(imagen),
    ),
  );
}

}