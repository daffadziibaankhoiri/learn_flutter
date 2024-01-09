import 'package:flutter/material.dart';
import 'list_tile.dart' as custom_list_tile;

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
          title: const Text(
            "List View",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white
            ),
          ),
          actions: [
            Builder(
              builder: (context) {
                return IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const custom_list_tile.FormListTile()),
                      );
                    },
                    icon: Icon(Icons.arrow_forward_ios)

                );
              },
            ),

          ],
        ),
        body: ListView(
          children: [
            Container(
              height: 200,
              width: 300,
              color: Colors.red,
                child: Center(
                  child : Transform(

                    transform: Matrix4.identity()
                      ..rotateZ(15 * 3.1415927 / 180),

                    child: const Text(
                      'Pertama',

                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,

                      ),
                    ),
                  ),
                  
                )
            ),
            Container(
              height: 200,
              width: 300,
              color: Colors.green,
                child: const Center(
                  child: Text(
                    'Kedua',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,

                    ),
                  ),
                )
            ),
            Container(
              height: 200,
              width: 300,
              color: Colors.yellow,
                child: const Center(
                  child: Text(
                    'Ketiga',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,

                    ),
                  ),
                )
            ),
            Container(
              height: 200,
              width: 300,
              color: Colors.purple,
                child: const Center(
                  child: Text(
                    'Keempat',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,

                    ),
                  ),
                ),
              ),

            Container(
              height: 200,
              width: 300,
              color: Colors.brown,

              child: const Center(
                child: Text(
                  'kelima',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,

                  ),
                ),
              )


            ),
            SizedBox(
              height: 100,
              width: 300,
              child: Center(
                child:  Transform(
                  alignment: FractionalOffset.center,
                  transform: Matrix4.identity()
                    ..rotateZ(90 * 3.1415927 / 180),
                  child:  const Text(
                    "Lorem ipsum",
                  ),
                ),
              ),
            ),
            // Builder(
            //   builder: (context) {
            //     return ElevatedButton(
            //       onPressed: () {
            //         Navigator.push(
            //           context,
            //           MaterialPageRoute(builder: (context) => const custom_list_tile.FormListTile()),
            //         );
            //       },
            //       child: const Text('Ke Form List Tile'),
            //     );
            //   },
            // ),


          ],
        ),
      ),
    );
  }
}
