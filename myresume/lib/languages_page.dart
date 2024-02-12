

import 'package:flutter/material.dart';


class LanguagesWidget extends StatelessWidget {
  final List jsonData;
  const LanguagesWidget({super.key, required this.jsonData});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(jsonData[5]['title']),
      ),
      body: jsonData.isNotEmpty ? Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView.builder(
          itemCount: jsonData[5]["languages"].length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(jsonData[5]["languages"][index]),
            );
          },
        ),
      ) : const Text('Loading...'),
    );
  }
}