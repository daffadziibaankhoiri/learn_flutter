import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormTabBar extends StatefulWidget {

   FormTabBar({super.key});

  @override
  State<FormTabBar> createState() => _FormTabBarState();
}

class _FormTabBarState extends State<FormTabBar> {
  String loginemail = "";
  String loginpassword = "";
  bool statusSwitch = false;
  Color containerColor = Colors.redAccent;
  Color containerColor1 = Colors.blueAccent;
    final TextEditingController loginemailController = TextEditingController();
    final TextEditingController loginpassController = TextEditingController();

   List<Tab> mytab =  [
     const Tab(
       text: "Login Form",
       icon: Icon(Icons.login),
     ),
     const Tab(
       text: "Register Form",
       icon: Icon(Icons.app_registration),
     ),
     const Tab(
       text: "Main Menu",
       icon: Icon(Icons.home_filled),
     )
   ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: mytab.length,
      child: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: const Text(
            "Tab Bar , Text Field dan Dialog",
            style: TextStyle(
                color: Colors.white
            ),
          ),
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
          bottom: TabBar(
            onTap: (index){
              FocusScope.of(context).unfocus();
            },
            labelColor: Colors.black,
            unselectedLabelColor: Colors.white,
            labelStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold
            ),
            unselectedLabelStyle: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.normal
            ),
            indicatorColor: Colors.white,
            indicatorPadding: const EdgeInsets.all(5),

            tabs: mytab,
          ),

        ),
        floatingActionButton: FloatingActionButton(
            onPressed: (){
              showDialog(context: context, builder: (context){
                  return AlertDialog(
                    title: Text("Keluar"),
                    content: Text("Apakah yakin ingin keluar?"),
                    actions: [
                      ElevatedButton(onPressed: (){
                        Navigator.of(context).pop();
                      },

                          child: Text(
                          "NO",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                        ),
                      ),

                      ), ElevatedButton(onPressed: (){
                        SystemNavigator.pop();
                      }, child: Text(
                          "YES",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),
                      )
                      ),
                    ],
                  );
              });

            },
          backgroundColor: Colors.blueAccent,
          child: Icon(Icons.exit_to_app, color: Colors.white,),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 50, bottom: 20),
                    child: Text(

                      'Login',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 30,right: 30,top: 20),
                    child: TextField(
                      // autocorrect: false,
                      // autofocus: false,
                      // enableSuggestions: false,
                      // enableInteractiveSelection: true,
                      // obscureText: false,
                      controller: loginemailController,
                      onChanged: (email){
                        setState(() {
                          loginemail = email;
                        });
                      },

                      keyboardType: TextInputType.emailAddress,
                      cursorColor: Colors.blueAccent,
                      decoration: InputDecoration(
                          isDense: true,
                        icon: Icon(Icons.email, size: 30,),
                        hintText: "Email",
                        labelText: "Your Email",
                        border: OutlineInputBorder(

                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blueAccent
                          )
                        )
                      ),
                      // obscuringCharacter: '₯',
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 30,right: 30,top: 10, bottom: 0),
                    child: TextField(
                      // autocorrect: false,
                      // autofocus: false,
                      // enableSuggestions: false,
                      // enableInteractiveSelection: true,
                      controller: loginpassController,
                      onChanged: (password){
                        setState(() {
                          loginpassword = password;
                        });
                      },
                      obscureText: true,
                      keyboardType: TextInputType.text,
                      cursorColor: Colors.blueAccent,
                      decoration: InputDecoration(
                        isDense: true,
                        suffixIcon: IconButton(
                          icon: Icon(Icons.remove_red_eye),
                          onPressed: null,
                        ),
                          icon: Icon(Icons.lock, size: 30,),
                          hintText: "Password",
                          labelText: "Your Password",
                          border: OutlineInputBorder(

                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.blueAccent
                              )
                          )

                      ),
                      // obscuringCharacter: '₯',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 130, right: 130, top: 40),
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent)
                        ),
                        onPressed: (){
                          if(loginemail.isEmpty){
                            var snackBar = SnackBar(
                              content: Text("Email is required"),
                              duration: Duration(seconds: 1),
                            );
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          }else if(loginpassword.isEmpty){
                            var snackBar = SnackBar(
                              content: Text("Password is required"),
                              duration: Duration(seconds: 1),
                            );
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          }else{
                            loginemailController.clear();
                            loginpassController.clear();
                            var snackBar = SnackBar(
                              content: Text("Login Success\n$loginemail\n$loginpassword"),
                              duration: Duration(seconds: 1),
                            );
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          }

                        },

                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.login_outlined, color: Colors.white,),
                            SizedBox(width: 10),
                            Text(
                                "Login",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20
                              ),
                            )
                          ],

                        )
                    ),
                  )
                ],
              ),
            ),

            //Tab Register

            SingleChildScrollView(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 50, bottom: 20),
                    child: Text(

                      'Register',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(left: 30,right: 30,top: 20),
                    child: TextField(
                      // autocorrect: false,
                      // autofocus: false,
                      // enableSuggestions: false,
                      // enableInteractiveSelection: true,
                      // obscureText: false,

                      keyboardType: TextInputType.text,
                      cursorColor: Colors.blueAccent,
                      decoration: InputDecoration(
                          isDense: true,
                          icon: Icon(Icons.person, size: 30,),
                          hintText: "Fullname",
                          labelText: "Your Fullname",
                          border: OutlineInputBorder(

                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.blueAccent
                              )
                          )
                      ),
                      // obscuringCharacter: '₯',
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(left: 30,right: 30,top: 10),
                    child: TextField(
                      // autocorrect: false,
                      // autofocus: false,
                      // enableSuggestions: false,
                      // enableInteractiveSelection: true,
                      // obscureText: false,

                      keyboardType: TextInputType.emailAddress,
                      cursorColor: Colors.blueAccent,
                      decoration: InputDecoration(
                          isDense: true,
                          icon: Icon(Icons.email, size: 30,),
                          hintText: "Email",
                          labelText: "Your Email",
                          border: OutlineInputBorder(

                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.blueAccent
                              )
                          )
                      ),
                      // obscuringCharacter: '₯',
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(left: 30,right: 30,top: 10, bottom: 0),
                    child: TextField(
                      // autocorrect: false,
                      // autofocus: false,
                      // enableSuggestions: false,
                      // enableInteractiveSelection: true,

                      obscureText: true,
                      keyboardType: TextInputType.text,
                      cursorColor: Colors.blueAccent,
                      decoration: InputDecoration(
                          isDense: true,
                          suffixIcon: IconButton(
                            icon: Icon(Icons.remove_red_eye),
                            onPressed: null,
                          ),
                          icon: Icon(Icons.lock, size: 30,),
                          hintText: "Password",
                          labelText: "Your Password",
                          border: OutlineInputBorder(

                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.blueAccent
                              )
                          )

                      ),
                      // obscuringCharacter: '₯',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 130, right: 120, top: 40),
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent)
                        ),
                        onPressed: (){
                          const snackBar = SnackBar(
                            content: Text("Register Success"),
                            duration: Duration(seconds: 1),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },

                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.app_registration, color: Colors.white,),
                            SizedBox(width: 10),
                            Text(
                              "Register",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20
                              ),
                            )
                          ],

                        )
                    ),
                  )
                ],
              ),
            ),
             SingleChildScrollView(
               child: Column(
                children: [
                  Text(
                      'Switch',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
               
                    ),
                  ),
                  Switch(
                    value : statusSwitch,
                    activeColor: Colors.white,
                    activeTrackColor: Colors.blueAccent,
                    inactiveThumbColor: Colors.white,
                    inactiveTrackColor: Colors.redAccent,
               
                    onChanged: (value){
                      setState(() {
                        statusSwitch = !statusSwitch;
                        containerColor = value ? Colors.blueAccent : Colors.redAccent;
                        containerColor1 = value ? Colors.redAccent : Colors.blueAccent;
                      });
                    },
               
                  ),
                  Container(
                    height: 180,
                    width: 180,
                    color: containerColor,
                  ),
                  Container(
                    height: 180,
                    width: 180,
                    color: Colors.white,
                  ),
                  Container(
                    height: 180,
                    width: 180,
                    color: containerColor1,
                  )
                ],
                           ),
             )
          ],
        ),
      ),

    );
  }
}
