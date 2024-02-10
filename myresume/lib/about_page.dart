

import 'package:flutter/material.dart';


class AboutWidget extends StatelessWidget {
  final List jsonData;
  const AboutWidget({super.key, required this.jsonData});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Professional Summary'),
      ),
      body: jsonData.isNotEmpty ? Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          jsonData[0]['description'],
          style: const TextStyle(
            fontSize: 16.0,
            height: 1.5, // Adjust line spacing
            letterSpacing: 0.5, // Adjust letter spacing
            fontWeight: FontWeight.normal,
          ),
        textAlign: TextAlign.justify, // Adjust text alignment
          ),
      ) : const Text('Loading...'),
    );
  }
}