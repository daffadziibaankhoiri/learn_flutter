import 'package:flutter/material.dart';
import 'main.dart';
import 'form_extract_widget.dart';
class FormListTile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'List Tile',
        textAlign: TextAlign.center,


        ),
      ),
        body: ListView(
         children:  [
            ListTile(
              // contentPadding: EdgeInsets.all(10),
              title : Text("Mobile Legend"),
              subtitle: Text("Moonton\n500M+ Downloads     3.6★"),
              leading: CircleAvatar(
                backgroundImage: AssetImage('Asset/mobile legend.png'),
              ),
              trailing: IconButton(
                icon: Icon(Icons.download_rounded),
                onPressed: (){
                  final snackBar = SnackBar(
                      content: Text("Mobile Legend Diunduh!"),
                    duration: Duration(seconds: 1),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
              ),


            ),
           Divider(
             color: Colors.grey,
           ),
           ListTile(
             title : Text("Genshin Impact"),
             subtitle: Text("COGNOSPHERE PTE.LTD\n50M+ Downloads       4.4★"),
             leading: CircleAvatar(
               backgroundImage: AssetImage("Asset/gi.png"),
             ),
             trailing: IconButton(
               icon: Icon(Icons.download_rounded),
               onPressed: (){
                 final snackBar = SnackBar(
                   content: Text("Genshin Impact Diunduh!"),
                   duration: Duration(seconds: 1),
                 );
                 ScaffoldMessenger.of(context).showSnackBar(snackBar);
               },
             ),

           ),
           Divider(
             color: Colors.grey,
           ),
           ListTile(
             title : Text("Call of Duty : Mobile - Garena"),
             subtitle: Text("Garena Mobile Private\n50M+ Downloads      3.9★"),
             leading: CircleAvatar(
               backgroundImage: AssetImage("Asset/codm.png"),
             ),
             trailing: IconButton(
               icon: Icon(Icons.download_rounded),
               onPressed: (){
                 final snackBar = SnackBar(
                   content: Text("Call of Duty : Mobile - Garena Diunduh!"),
                   duration: Duration(seconds: 1),
                 );
                 ScaffoldMessenger.of(context).showSnackBar(snackBar);
               },
             ),
           ),
           Divider(
             color: Colors.grey,
           ),
           ListTile(
             title : Text("Honkai: Star Rail"),
             subtitle: Text("COGNOSPHERE PTE.LTD\n10M+ Downloads      4.6★"),
             leading: CircleAvatar(
               backgroundImage: AssetImage("Asset/hsr.png"),
             ),
             trailing: IconButton(
               icon: Icon(Icons.download_rounded),
               onPressed: (){
                 final snackBar = SnackBar(
                   content: Text("Honkai: Star Rai Diunduh!"),
                   duration: Duration(seconds: 1),
                 );
                 ScaffoldMessenger.of(context).showSnackBar(snackBar);
               },
             ),

           ),
           Divider(
             color: Colors.grey,
           ),
           ListTile(
             title : Text("Clash of Clans"),
             subtitle: Text("Supercell\n500M+ Downloads     4.2★"),
             leading: CircleAvatar(
               backgroundImage: AssetImage("Asset/coc.png"),
             ),
             trailing: IconButton(
               icon: Icon(Icons.download_rounded),
               onPressed: (){
                 final snackBar = SnackBar(
                   content: Text("Clash of Clans Diunduh!"),
                   duration: Duration(seconds: 1),
                 );
                 ScaffoldMessenger.of(context).showSnackBar(snackBar);
               },
             ),

           ),
           Divider(
             color: Colors.grey,
           ),
           ListTile(
             title : Text("8 Ball Poll"),
             subtitle: Text("miniclip.com\n1B+ Downloads          4.2★"),
             leading: CircleAvatar(
               backgroundImage: AssetImage("Asset/8Ball.png"),
             ),
             trailing: IconButton(
               icon: Icon(Icons.download_rounded),
               onPressed: (){
                 final snackBar = SnackBar(
                   content: Text("8 ball Poll Diunduh!"),
                   duration: Duration(seconds: 1),
                 );
                 ScaffoldMessenger.of(context).showSnackBar(snackBar);
               },
             ),

           ),
           Divider(
             color: Colors.grey,
           ),
           ListTile(
             title : Text("Honkai Impact 3rd"),
             subtitle: Text("miHoYo Limited\n10M+ Downloads       4.2★"),
             leading: CircleAvatar(
               backgroundImage: AssetImage("Asset/hi.png"),
             ),
             trailing: IconButton(
               icon: Icon(Icons.download_rounded),
               onPressed: (){
                 final snackBar = SnackBar(
                   content: Text("Honkai Impact 3rd Diunduh!"),
                   duration: Duration(seconds: 1),
                 );
                 ScaffoldMessenger.of(context).showSnackBar(snackBar);
               },
             ),

           ),
           Divider(
             color: Colors.grey,
           ),
           ListTile(
             title : Text("Free Fire : Winterlands"),
             subtitle: Text("Garena International I\n1B+ Downloads          4.1★"),
             leading: CircleAvatar(
               backgroundImage: AssetImage("Asset/ff.png"),
             ),
             trailing: IconButton(
               icon: Icon(Icons.download_rounded),
               onPressed: (){
                 final snackBar = SnackBar(
                   content: Text("Free Fire : Winterlands Diunduh!"),
                   duration: Duration(seconds: 1),
                 );
                 ScaffoldMessenger.of(context).showSnackBar(snackBar);
               },
             ),

           ),
           Divider(
             color: Colors.grey,
           ),
           Builder(
             builder: (context) {
               return ElevatedButton(
                 onPressed: () {
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => MyApp()),
                   );
                 },
                 child: Text('Ke Main Form'),
               );
             },
           ),
           Builder(
             builder: (context) {
               return ElevatedButton(
                 onPressed: () {
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => FormExtractWidget()),
                   );
                 },
                 child: Text('Ke Form Ketiga'),
               );
             },
           ),
          ],
        ),
      );
  }
}
