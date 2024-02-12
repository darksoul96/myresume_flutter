

import 'package:flutter/material.dart';


class EmploymentWidget extends StatefulWidget {
  final List jsonData;
  const EmploymentWidget({super.key, required this.jsonData});

  @override
  State<EmploymentWidget> createState() => _EmploymentWidgetState();
}

class _EmploymentWidgetState extends State<EmploymentWidget> {
  Map<int, bool> subtitleVisibility = {};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.jsonData[1]['title']),
      ),
      body: widget.jsonData.isNotEmpty ? ListView.builder(
      itemCount: widget.jsonData[1]['jobs'].length,
      itemBuilder: (context, index) {
        if (index >= 0 && index < widget.jsonData.length) {
          final title = widget.jsonData[1]['jobs'][index]['year'] + ' - ' + widget.jsonData[1]['jobs'][index]['job_title'];
          final subtitle = widget.jsonData[1]['jobs'][index]['description'];
        return Column(
          children: [
            ListTile(
              title: Text(title),
              subtitle: subtitleVisibility[index] == true
                      ? Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(subtitle),
                      )
                      : null,
              onTap: () {
                setState(() {
                  subtitleVisibility[index] = !(subtitleVisibility[index] ?? false);
                });
              },
            ),
            const Divider(),
          ],
        );
        } else {
          return SizedBox.shrink();
        }
      },
    ) : const Text('Loading...'),
    );
  }
}