import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:learn_flutter/FormMappingList.dart';
class FormStateFullWidget extends StatefulWidget {

  FormStateFullWidget({super.key});

  @override
  State<FormStateFullWidget> createState() => _FormStateFullWidgetState();
}

class _FormStateFullWidgetState extends State<FormStateFullWidget> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("StateFul Widget",
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
                    MaterialPageRoute(builder: (context) => FormMappingList()),
                  );
                },
                  icon: Icon(Icons.arrow_forward_ios)

              );
            },
          ),

        ],
        centerTitle: true,


      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            DateFormat.yMMMM().format(DateTime.now()).toString(),
            style: TextStyle(
              fontSize: 20
            ),
          ),
          Text(
            DateFormat.yMMMMd().add_Hm().format(DateTime.now()).toString(),
            style: TextStyle(
                fontSize: 20
            ),
          ),
          Text(
            DateFormat.yMMMMEEEEd().add_jm().format(DateTime.now()).toString(),
            style: TextStyle(
                fontSize: 20
            ),
          ),
          // Builder(
          //   builder: (context) {
          //     return ElevatedButton(
          //       onPressed: () {
          //         Navigator.push(
          //           context,
          //           MaterialPageRoute(builder: (context) => FormMappingList()),
          //         );
          //       },
          //
          //       child: const Text('Ke Form Mapping List'),
          //     );
          //   },
          // ),

          Container(
              height: 300,
              width: 300,
              child: Image(
                image: AssetImage('Asset/kardus.png'),
              ),
            ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              ElevatedButton(
                  onPressed: (){
                    if(counter != 1){
                      setState(() {
                        counter--;
                      });
                    }
                  },
                  child: Icon(Icons.remove)
              ),
              AnimatedSwitcher(
                  duration:Duration(milliseconds: 200),
                transitionBuilder: (Widget child, Animation<double> animation){
                    return ScaleTransition(scale: animation, child: child);
                },
                child:    Text(
                  counter.toString(),
                  key: ValueKey<int>(counter),
                  style: TextStyle(
                      fontSize: 25
                  ),
                ),
              ),

              ElevatedButton(
                  onPressed: (){
                    setState(() {
                      counter++;
                    });
                  }, child: Icon(Icons.add)
              ),
            ],
          )
        ],
      ),
    );
  }
}
