import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'package:learn_flutter/form_statefull_widget.dart';
class FormExtractWidget extends StatelessWidget {
  var faker = Faker();

  FormExtractWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        title: const Text(
          'Extract Widget and Faker',
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
                      MaterialPageRoute(builder: (context) => FormStateFullWidget()),
                    );
                  },
                  icon: Icon(Icons.arrow_forward_ios)

              );
            },
          ),

        ],
      ),
      body:Column(
        children: [
          // Builder(
          //   builder: (context){
          //     return  ElevatedButton(
          //       onPressed: (){
          //         Navigator.push(
          //             context,
          //             MaterialPageRoute(builder: (context) => FormStateFullWidget()),
          //         );
          //       },
          //       child: Text(
          //           'Pindah ke Form Keempat'
          //       ),
          //     );
          //
          //   },
          // ),
            Expanded(child:  ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index){
                  return Column(

                    children: [


                      FakerItem(
                        imageUrl: "https://picsum.photos/id/1$index/200/300",
                        title: faker.person.name(),
                        subtitle: faker.address.city(),
                        company: faker.company.name(),
                      ),
                      const Divider(
                        color: Colors.grey,
                      ),
                    ],
                  );


                }
              ),
            ),
        ],
      )
    );
  }
}

class FakerItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String company;
   const FakerItem({super.key, 

    required this.imageUrl, required this.title, required this.subtitle,required this.company

  });

  @override
  Widget build(BuildContext context) {
    return ListTile(

      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Text(company),

      selectedTileColor: Colors.grey,
    );
  }
}
