import 'package:flutter/material.dart';
import 'main.dart';
import 'form_extract_widget.dart';
class FormListTile extends StatelessWidget{
  const FormListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        title: const Text(
          'List Tile',
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
                      MaterialPageRoute(builder: (context) => FormExtractWidget()),
                    );
                  },
                  icon: Icon(Icons.arrow_forward_ios)

              );
            },
          ),

        ],
      ),
        body: ListView(
         children:  [
            ListTile(
              // contentPadding: EdgeInsets.all(10),
              title : const Text("Mobile Legend"),
              subtitle: const Text("Moonton\n500M+ Downloads     3.6★"),
              leading: const CircleAvatar(
                backgroundImage: AssetImage('Asset/mobile legend.png'),
              ),
              trailing: IconButton(
                icon: const Icon(Icons.download_rounded),
                onPressed: (){
                  const snackBar = SnackBar(
                      content: Text("Mobile Legend Diunduh!"),
                    duration: Duration(seconds: 1),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
              ),


            ),
           const Divider(
             color: Colors.grey,
           ),
           ListTile(
             title : const Text("Genshin Impact"),
             subtitle: const Text("COGNOSPHERE PTE.LTD\n50M+ Downloads       4.4★"),
             leading: const CircleAvatar(
               backgroundImage: AssetImage("Asset/gi.png"),
             ),
             trailing: IconButton(
               icon: const Icon(Icons.download_rounded),
               onPressed: (){
                 const snackBar = SnackBar(
                   content: Text("Genshin Impact Diunduh!"),
                   duration: Duration(seconds: 1),
                 );
                 ScaffoldMessenger.of(context).showSnackBar(snackBar);
               },
             ),

           ),
           const Divider(
             color: Colors.grey,
           ),
           ListTile(
             title : const Text("Call of Duty : Mobile - Garena"),
             subtitle: const Text("Garena Mobile Private\n50M+ Downloads      3.9★"),
             leading: const CircleAvatar(
               backgroundImage: AssetImage("Asset/codm.png"),
             ),
             trailing: IconButton(
               icon: const Icon(Icons.download_rounded),
               onPressed: (){
                 const snackBar = SnackBar(
                   content: Text("Call of Duty : Mobile - Garena Diunduh!"),
                   duration: Duration(seconds: 1),
                 );
                 ScaffoldMessenger.of(context).showSnackBar(snackBar);
               },
             ),
           ),
           const Divider(
             color: Colors.grey,
           ),
           ListTile(
             title : const Text("Honkai: Star Rail"),
             subtitle: const Text("COGNOSPHERE PTE.LTD\n10M+ Downloads      4.6★"),
             leading: const CircleAvatar(
               backgroundImage: AssetImage("Asset/hsr.png"),
             ),
             trailing: IconButton(
               icon: const Icon(Icons.download_rounded),
               onPressed: (){
                 const snackBar = SnackBar(
                   content: Text("Honkai: Star Rai Diunduh!"),
                   duration: Duration(seconds: 1),
                 );
                 ScaffoldMessenger.of(context).showSnackBar(snackBar);
               },
             ),

           ),
           const Divider(
             color: Colors.grey,
           ),
           ListTile(
             title : const Text("Clash of Clans"),
             subtitle: const Text("Supercell\n500M+ Downloads     4.2★"),
             leading: const CircleAvatar(
               backgroundImage: AssetImage("Asset/coc.png"),
             ),
             trailing: IconButton(
               icon: const Icon(Icons.download_rounded),
               onPressed: (){
                 const snackBar = SnackBar(
                   content: Text("Clash of Clans Diunduh!"),
                   duration: Duration(seconds: 1),
                 );
                 ScaffoldMessenger.of(context).showSnackBar(snackBar);
               },
             ),

           ),
           const Divider(
             color: Colors.grey,
           ),
           ListTile(
             title : const Text("8 Ball Poll"),
             subtitle: const Text("miniclip.com\n1B+ Downloads          4.2★"),
             leading: const CircleAvatar(
               backgroundImage: AssetImage("Asset/8Ball.png"),
             ),
             trailing: IconButton(
               icon: const Icon(Icons.download_rounded),
               onPressed: (){
                 const snackBar = SnackBar(
                   content: Text("8 ball Poll Diunduh!"),
                   duration: Duration(seconds: 1),
                 );
                 ScaffoldMessenger.of(context).showSnackBar(snackBar);
               },
             ),

           ),
           const Divider(
             color: Colors.grey,
           ),
           ListTile(
             title : const Text("Honkai Impact 3rd"),
             subtitle: const Text("miHoYo Limited\n10M+ Downloads       4.2★"),
             leading: const CircleAvatar(
               backgroundImage: AssetImage("Asset/hi.png"),
             ),
             trailing: IconButton(
               icon: const Icon(Icons.download_rounded),
               onPressed: (){
                 const snackBar = SnackBar(
                   content: Text("Honkai Impact 3rd Diunduh!"),
                   duration: Duration(seconds: 1),
                 );
                 ScaffoldMessenger.of(context).showSnackBar(snackBar);
               },
             ),

           ),
           const Divider(
             color: Colors.grey,
           ),
           ListTile(
             title : const Text("Free Fire : Winterlands"),
             subtitle: const Text("Garena International I\n1B+ Downloads          4.1★"),
             leading: const CircleAvatar(
               backgroundImage: AssetImage("Asset/ff.png"),
             ),
             trailing: IconButton(
               icon: const Icon(Icons.download_rounded),
               onPressed: (){
                 const snackBar = SnackBar(
                   content: Text("Free Fire : Winterlands Diunduh!"),
                   duration: Duration(seconds: 1),
                 );
                 ScaffoldMessenger.of(context).showSnackBar(snackBar);
               },
             ),

           ),
           const Divider(
             color: Colors.grey,
           ),
           // Builder(
           //   builder: (context) {
           //     return ElevatedButton(
           //       onPressed: () {
           //         Navigator.push(
           //           context,
           //           MaterialPageRoute(builder: (context) => const MyApp()),
           //         );
           //       },
           //       child: const Text('Ke Main Form'),
           //     );
           //   },
           // ),
           // Builder(
           //   builder: (context) {
           //     return ElevatedButton(
           //       onPressed: () {
           //         Navigator.push(
           //           context,
           //           MaterialPageRoute(builder: (context) => FormExtractWidget()),
           //         );
           //       },
           //       child: const Text('Ke Form Ketiga'),
           //     );
           //   },
           // ),
          ],
        ),
      );
  }
}
