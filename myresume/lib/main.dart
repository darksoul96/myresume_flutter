

import 'package:flutter/material.dart';
import 'dart:convert'; // Import this to use json.decode
import 'package:flutter/services.dart'; // Import this to access rootBundle
import 'package:myresume/employment_page.dart';
import 'package:url_launcher/url_launcher.dart';
import 'about_page.dart';
import 'education_page.dart';
import 'technologies_page.dart';
import 'skills_page.dart';
import 'languages_page.dart';


void main() {
  runApp(
    MaterialApp(
      home: MyWidget(),
    )
    );
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}



class _MyWidgetState extends State<MyWidget> {

  List<dynamic> _jsonData = [];

  @override
  void initState() {
    super.initState();
    _readJsonData();
  }

  Future<void> _readJsonData() async {
    try {
      String jsonString = await rootBundle.loadString('assets/data.json');
      List<dynamic> jsonData = json.decode(jsonString);
      setState(() {
        _jsonData = jsonData;
      });
    } catch (e) {
      print("Error reading JSON file: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 40, 37, 34),
          iconTheme: const IconThemeData(color: Colors.white),
          title: const Center(child: Text('Welcome to my resume')),
          titleTextStyle: const TextStyle(color: Colors.white),
          actions: const [
            Icon(Icons.help)
          ],
        ),

      body: ListView(
        children: [
          SingleChildScrollView(
            child: ListBody(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AboutWidget(jsonData : _jsonData)), 
                    );
                  },
                  child: SizedBox(
                    child: Column(
                      children: [
                        Card(
                          child:  ListTile(
                            title: _jsonData.isNotEmpty ? Text(_jsonData[0]['title']) : const Text('Loading...'),
                          )
                        ),
                        
                      ],
                    )
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EmploymentWidget(jsonData : _jsonData)),
                    );
                  },
                  child: SizedBox(
                    child: Column(
                      children: [
                        Card(
                          child:  ListTile(
                            title: _jsonData.isNotEmpty ? Text(_jsonData[1]['title']) : const Text('Loading...'),
                          )
                        ),
                        
                      ],
                    )
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EducationWidget(jsonData: _jsonData))
                    );
                  },
                  child: SizedBox(
                    child: Column(
                      children: [
                        Card(
                          child:  ListTile(
                            title: _jsonData.isNotEmpty ? Text(_jsonData[2]['title']) : const Text('Loading...'),
                          )
                        ),
                        
                      ],
                    )
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => TechnologiesWidget(jsonData: _jsonData)));
                  },
                  child: SizedBox(
                    child: Column(
                      children: [
                        Card(
                          child:  ListTile(
                            title: _jsonData.isNotEmpty ? Text(_jsonData[3]['title']) : const Text('Loading...'),
                          )
                        ),
                        
                      ],
                    )
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SkillsWidget(jsonData: _jsonData)));
                  },
                  child: SizedBox(
                    child: Column(
                      children: [
                        Card(
                          child:  ListTile(
                            title: _jsonData.isNotEmpty ? Text(_jsonData[4]['title']) : const Text('Loading...'),
                          )
                        ),
                        
                      ],
                    )
                  ),
                ),


                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LanguagesWidget(jsonData: _jsonData)));
                  },
                  child: SizedBox(
                    child: Column(
                      children: [
                        Card(
                          child:  ListTile(
                            title: _jsonData.isNotEmpty ? Text(_jsonData[5]['title']) : const Text('Loading...'),
                          )
                        ),
                        
                      ],
                    )
                  ),
                )


              ],
            ),
          ),
        ]
        
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
                                  Icons.location_pin,
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
                      child: GestureDetector(
                        onTap: () {
                          _launchURL('https://github.com/darksoul96');
                        },
                        child: RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: 'Github',
                              ),
                              WidgetSpan(
                                child: Padding(
                                  padding: EdgeInsets.only(left: 10,),
                                  child: Icon(
                                    Icons.code,
                                    color: Colors.white,
                                    size: 16,
                                  ),
                                ),
                              )
                            ]
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 15,),
                      child: GestureDetector(
                        onTap: () {
                          _launchURL('https://www.linkedin.com/in/agustin-federico-ruiz-991904220');
                        },
                        child: RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: 'LinkedIn',
                              ),
                              WidgetSpan(
                                child: Padding(
                                  padding: EdgeInsets.only(left: 10,),
                                  child: Icon(
                                    Icons.work,
                                    color: Colors.white,
                                    size: 16,
                                  ),
                                ),
                              )
                            ]
                          ),
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

  _launchURL(urlString) async {
   final Uri url = Uri.parse(urlString);
   if (!await launchUrl(url)) {
        throw Exception('Could not launch $url');
    }
}
}