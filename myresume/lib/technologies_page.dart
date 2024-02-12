

import 'package:flutter/material.dart';


class TechnologiesWidget extends StatelessWidget {
  final List jsonData;
  const TechnologiesWidget({super.key, required this.jsonData});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(jsonData[3]['title']),
      ),
      body: jsonData.isNotEmpty ? Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView.builder(
          itemCount: jsonData[3]["tech"].length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(jsonData[3]["tech"][index]),
            );
          },
        ),
      ) : const Text('Loading...'),
    );
  }
}