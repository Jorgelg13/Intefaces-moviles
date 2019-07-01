import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: <Widget>[
            fondo(),
            SafeArea(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Populares',
                      style: TextStyle(fontSize: 30.0, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            _paginas(context),
          ],
        ),
        bottomNavigationBar: _barraDeNavegacion(context));
  }

  Widget fondo() {
    return Container(
        height: 250.0,
        width: double.infinity,
        color: Colors.blueAccent,
        child: Row());
  }

  Widget _imagenes(String imagen) {
    return Container(
      height: 10.0,
      width: 50.0,
      child: Image(
        image: NetworkImage(
           imagen),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _paginas(BuildContext context) {
    final pantalla = MediaQuery.of(context).size;
    return ListView(
      children: <Widget>[
             Container(
          margin: EdgeInsetsDirectional.fromSTEB(20.0, 130.0, 20.0, 1.0),
          height: pantalla.height * 0.25,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: PageView(
              pageSnapping: true,
              children: <Widget>[
                _imagenes( 'https://i1.wp.com/www.andro-life.com/wp-content/uploads/2017/08/Wallpaper-3.jpg?ssl=1'),
                _imagenes('https://i2.wp.com/www.andro-life.com/wp-content/uploads/2017/08/Wallpaper-5.png?ssl=1'),
              ],
         ),
       ),
    ),
    _contenido(),
    _texto(),
    _texto(),
    _texto(),
    _texto()
      ],
    );
  }

  Widget _estrellas() {
    return Container(
      child: Icon(
        Icons.star,
        color: Colors.yellow,
      ),
    );
  }

  Widget _contenido() {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            'Jorge Laj',
            style: TextStyle(
                fontSize: 35.0,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 30.0,
          ),
          _estrellas(),
          _estrellas(),
          _estrellas(),
          _estrellas(),
          _estrellas(),
        ],
      ),
    );
  }

  Widget _texto() {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Text(
        'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.',
        style: TextStyle(),
        textAlign: TextAlign.justify,
      ),
    );
  }

  Widget _barraDeNavegacion(BuildContext context) {
    return new Theme(
      data: Theme.of(context).copyWith(
          canvasColor: Colors.blueAccent,
          primaryColor: Colors.white,
          textTheme: Theme.of(context)
              .textTheme
              .copyWith(caption: TextStyle(color: Colors.white54))),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'basico');
              },
              child: Icon(
                Icons.style,
                size: 30.0,
              ),
            ),
            title: Container(),
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.subscriptions,
                size: 30.0,
              ),
              title: Container()),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.textsms,
                size: 30.0,
              ),
              title: Container()),
        ],
      ),
    );
  }
}
