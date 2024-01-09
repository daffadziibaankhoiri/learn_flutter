import 'package:flutter/material.dart';

class FormMappingList extends StatelessWidget {
  FormMappingList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> myList = [
      {
        "Judul" : "Dunki",
        "Genre" : "Action, Comedy",
        "Durasi" : "159 Menit",
        "Gambar" : "Asset/dunki.webp",
        "Jam" : ["09:50","12:15","15:25","21:20","23:30"]
      },
      {
        "Judul" : "TRINIL: Kembalikan Tubuhku",
        "Genre" : "Horror",
        "Durasi" : "101 menit",
        "Gambar" : "Asset/trinil.webp",
        "Jam" : ["11:15","13:45","16:00","19:20","21:35","23:50"]
      },
      {
        "Judul" : "Night Swim",
        "Genre" : "Horror, Thriller",
        "Durasi" : "98 Menit",
        "Gambar" : "Asset/nightswim.webp",
        "Jam" : ["10:40","12:45","14:15","17:35","22:55"]
      },
      {
        "Judul" : "13 Bom di Jakarta",
        "Genre" : "Action, Crime, Thriller",
        "Durasi" : "144 Menit",
        "Gambar" : "Asset/13bomdijakarta.webp",
        "Jam" : ["11:20","15:50","18:50"]
      },
      {
        "Judul" : "Aquaman and the Lost Kingdom",
        "Genre" : "Action, Adventure, Fantasy",
        "Durasi" : "124 Menit",
        "Gambar" : "Asset/aquaman.webp",
        "Jam" : ["04:10","09:45","13:35","19:00"]
      },
      {
        "Judul" : "Siksa Neraka",
        "Genre" : "Horror, Thriller",
        "Durasi" : "98 Menit",
        "Gambar" : "Asset/siksaneraka.webp",
        "Jam" : ["13:20","16:25","19:10","21:50"]
      },

    ];
    return  Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.blueAccent,
         title: Text('Mapping List dan ChildScroll'),
         centerTitle: true,
       ),
      body: ListView(
        children: myList.map((data){
          List Jam = data['Jam'];
          return Card(
            margin: EdgeInsets.all(10),
            child: Container(
              margin: EdgeInsets.all(10),
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 0, right: 5),
                        height: 160,
                        width: 90,
                        child:   Image(
                            image: AssetImage("${data['Gambar']}")
                        ),
                      ),
                      SizedBox(width: 5),
                      Flexible(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${data['Judul']}",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                              ),
                              softWrap: true,
                              overflow: TextOverflow.clip,
                            ),
                            Text(
                                "Genre : ${data['Genre']}",
                              textAlign: TextAlign.start,
                            ),
                            Text(
                                "Durasi : ${data['Durasi']}",
                              textAlign: TextAlign.start,
                            )

                          ],
                        ),
                      )
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: Jam.map((jam){
                        return  Container(

                          color: Colors.red,
                          margin: EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: 18
                          ),
                          padding: EdgeInsets.all(5),
                          child: Text(jam,

                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        );
                      }).toList(),

                        // Container(
                        //   child: Text("12:00"),
                        // ),


                    ),
                  )
                ],
              ),
            ),
          );
        }).toList(),
      ),

    );
  }
}
