import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("List View"),
        ),
        body: ListView(
          children: [
            Container(
              height: 300,
              width: 300,
              color: Colors.red,
                child: Center(
                  child : Transform(

                    child: Text(
                      'Pertama',

                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,

                      ),
                    ),
                    transform: new Matrix4.identity()
                      ..rotateZ(15 * 3.1415927 / 180),
                  ),
                  
                )
            ),
            Container(
              height: 300,
              width: 300,
              color: Colors.green,
                child: Center(
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
              height: 300,
              width: 300,
              color: Colors.yellow,
                child: Center(
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
              height: 300,
              width: 300,
              color: Colors.purple,
                child: Center(
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
              height: 300,
              width: 300,
              color: Colors.brown,

              child: Center(
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
            Container(
              child: new Center(
                child:  new Transform(
                  child:  new Text(
                    "Lorem ipsum",
                  ),
                  alignment: FractionalOffset.center,
                  transform: new Matrix4.identity()
                    ..rotateZ(90 * 3.1415927 / 180),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
