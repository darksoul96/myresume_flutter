

import 'package:flutter/material.dart';


class SkillsWidget extends StatelessWidget {
  final List jsonData;
  const SkillsWidget({super.key, required this.jsonData});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(jsonData[4]['title']),
      ),
      body: jsonData.isNotEmpty ? Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView.builder(
          itemCount: jsonData[4]["list"].length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(jsonData[4]["list"][index]),
            );
          },
        ),
      ) : const Text('Loading...'),
    );
  }
}