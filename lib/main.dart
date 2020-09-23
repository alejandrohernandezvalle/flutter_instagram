import 'package:flutter/material.dart';

void main() {
  runApp(PantallaPrincipal());
}

class PantallaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Instagram Posts"),
            ),
            body: InstagramPost()));
  }
}

class InstagramPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // Cabecera
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  // Imagen de perfil
                  // ClipOval(
                  //   child:  Image.asset(
                  //   'icons/avatar.jpg',
                  //     width: 30.0,
                  //     height: 30.0,
                  //     fit: BoxFit.cover,
                  //   ),
                  // ),

                  SizedBox(
                    width: 13.0,
                  ),

                  // Usuario
                  Text(
                    'Alejandro',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              // Icono de ver mas
              Icon(Icons.more_vert)
            ],
          ),
        ),

        // Imagen publicada
        Image.asset('icons/photo.jpg',
          width: 350.0,
          height: 350.0,
        ),

        // Iconos de interacción con el usuario
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image.asset(
                    'icons/icono_corazon.png',
                    width: 35.0,
                    height: 35.0,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Image.asset(
                    'icons/icono_mensaje.png',
                    width: 35.0,
                    height: 35.0,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Image.asset(
                    'icons/icono_enviar.png',
                    width: 35.0,
                    height: 35.0,
                  ),
                ],
              ),
              Image.asset(
                'icons/icono_guardar.png',
                width: 35.0,
                height: 40.0,
              ),
            ],
          ),
        ),

        // Likes
        Row(
          children: <Widget>[
            SizedBox(
              width: 15.0,
            ),
            ClipOval(
              child: Image.asset(
                'icons/avatar.jpg',
                width: 25.0,
                height: 25.0,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 10.0,
            ),

            // A los otros que les gustó
            Text('Les gusta a'),
            SizedBox(
              width: 5.0,
            ),
            Text(
              'Alejandro',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 5.0,
            ),
            Text('y'),
            SizedBox(
              width: 5.0,
            ),
            Text(
              '1,937 más',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        )
      ],
    );
  }
}
