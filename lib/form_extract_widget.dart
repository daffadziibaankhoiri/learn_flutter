import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
class FormExtractWidget extends StatelessWidget {
  var faker = Faker();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Extract Widget and Faker',
        textAlign: TextAlign.center,
        ),
      ),
      body: ListView.builder(
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
              Divider(
                color: Colors.grey,
              ),
            ],
          );


      }
        // children: [
        // ],
      ),
    );
  }
}

class FakerItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String company;
   FakerItem({

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
      onTap: (

      ),
      selectedTileColor: Colors.grey,
    );
  }
}
