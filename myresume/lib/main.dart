

import 'package:flutter/material.dart';


void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 40, 37, 34),
          iconTheme: const IconThemeData(color: Colors.white),
          title: const Text('Welcome to my resume'),
          titleTextStyle: const TextStyle(color: Colors.white),
        ),
        drawer: Drawer(
          backgroundColor: const Color.fromARGB(255, 40, 37, 34),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
                const Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: CircleAvatar(
                        radius: 70,
                        backgroundImage: AssetImage('assets/images/profile.jpg'),
                    ),
                  ),
                ),
                
              const DrawerHeader(
                child: Column(
                  children: [
                    Text(
                      'Agustin F. Ruiz',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Arial',
                      ),
                     ),
                     Text(
                      'Programmer & Student',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 13.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15,),
                      child: RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: 'agustinruiz96@gmail.com',
                            ),
                            WidgetSpan(
                              child: Padding(
                                padding: EdgeInsets.only(left: 10,),
                                child: Icon(
                                  Icons.email,
                                  color: Colors.white,
                                  size: 16,
                                ),
                              ),
                            )
                          ]
                        ),
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.only(top: 15,),
                      child: RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: '+542236833829',
                            ),
                            WidgetSpan(
                              child: Padding(
                                padding: EdgeInsets.only(left: 10,),
                                child: Icon(
                                  Icons.mobile_friendly,
                                  color: Colors.white,
                                  size: 16,
                                ),
                              ),
                            )
                          ]
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 15,),
                      child: RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: 'Mar del Plata, Buenos Aires, Argentina',
                            ),
                            WidgetSpan(
                              child: Padding(
                                padding: EdgeInsets.only(left: 10,),
                                child: Icon(
                                  Icons.location_city,
                                  color: Colors.white,
                                  size: 16,
                                ),
                              ),
                            )
                          ]
                        ),
                      ),
                    ),
                  ],
                ),
              )

              
            ],
          ),
        ),
      ),
    );
  }
}