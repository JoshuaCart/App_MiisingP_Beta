import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MissingPMain extends StatefulWidget {
  @override
  _MissingPMainState createState() => _MissingPMainState();
}

class _MissingPMainState extends State<MissingPMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                // aqui llama a la pantalla inicial
              },
            ),
            Text("EncuentraMe!", style: TextStyle(color: Colors.white)),
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                // aqui va al perfil
              },
            ),
          ],
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Buscar",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
        ),
      ),

      /*body: Center(

          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              textStyle: TextStyle(fontSize: 28),
            ),
        child: Text('Desaparecidos'),
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(
              builder:(context) => 
              ));
          },
      )),*/

      bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 8.0,
          child: Container(
            height: 700.0,
            //child: Padding(
            //padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            //child: Padding(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Icon(Icons.notifications),
                      iconSize: 40.0,
                      onPressed: () {},
                    ),
                    Text("Notificación"),
                  ],
                ),

                SizedBox(
                  width: 60,
                  height: 80,
                ), // Espacio para el botón de la cámara

                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Icon(Icons.add),
                      iconSize: 40.0,
                      onPressed: () {
                        //print("Agregar Reporte presionado");
                      },
                    ),
                    //Text("Agregar Reporte"),
                  ],
                ),

                /*
                IconButton(
                  icon: Icon(Icons.notifications),
                  iconSize: 40.0,
                  onPressed: () {
                    //se habrira la pantalla de notificacines
                  },
                ),
                Text("Notificación"),

                IconButton(
                  icon: Icon(Icons.camera_alt),
                  iconSize: 40.0,
                  onPressed: () {
                    //se habrira la camara
                  },
                ),

                IconButton(
                  icon: Icon(Icons.add),
                  iconSize: 40.0,
                  onPressed: () {
                    // aprecera un pop up para agregar
                  },
                ),*/
              ],
            ),
          )),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //print("Cámara presionada");
        },
        backgroundColor: Colors.lightGreen,
        shape: CircleBorder(),
        child: Icon(
          Icons.camera_alt,
          size: 40.0,
          color: Colors.white,
        ),
      ),

      //),
    );
  }
}
