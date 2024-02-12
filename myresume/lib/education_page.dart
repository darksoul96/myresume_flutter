

import 'package:flutter/material.dart';


class EducationWidget extends StatelessWidget {
  final List jsonData;
  const EducationWidget({super.key, required this.jsonData});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Professional Summary'),
      ),
      body: jsonData.isNotEmpty ? Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(jsonData[2]['year'] + ' - ' + jsonData[2]['description'],),
      ) : const Text('Loading...'),
    );
  }
}