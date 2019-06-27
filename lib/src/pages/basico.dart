import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BasicoPage extends StatelessWidget {
  final titulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final subtitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
             children: <Widget>[
            _crearImagen(),
            _crearTitulo(),
            _acciones(context),
            _crearTexto(),
             _crearTexto(),
              _crearTexto(),
               _crearTexto(),
                _crearTexto(),
          ]
          ),
        ),
      ),
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://i.pinimg.com/originals/56/51/95/565195334c65161245539372274d8ced.jpg'),
    );
  }

  Widget _crearTitulo() {
    return SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 2.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Imagen del Universo.',
                    style: titulo,
                  ),
                  SizedBox(height: 7.0),
                  Text(
                    'Lago reflejando la galaxia...',
                    style: subtitulo,
                  ),
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 30.0,
            ),
            Text(
              '41',
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }

  Widget _acciones(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _accion(context, Icons.call, 'CALL'),
          _accion(context,Icons.near_me, 'ROUTE'),
          _accion(context,Icons.share, 'SHARE'),
        ],
      ),
    );
  }

  Widget _accion(BuildContext context, IconData icon, String texto) {
    return Column(
      children: <Widget>[
        GestureDetector(
            onTap: (){
             Navigator.pushNamed(context, 'scroll');
            },
            child: Icon(
            icon,
            color: Colors.blue,
            size: 40.0,
          ),
        ),
        SizedBox(height: 7.0,),
        Text(texto, style: TextStyle(fontSize: 15.0,color: Colors.blue),),
      ],
    );
  }

 Widget _crearTexto() {
   return SafeArea(
        child: Container(
       padding: EdgeInsets.symmetric(vertical: 1.0,horizontal: 20.0),
       child: Text('Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.',
        textAlign: TextAlign.justify,
        style: TextStyle() ,
       ),
     ),
   );
 }
}
