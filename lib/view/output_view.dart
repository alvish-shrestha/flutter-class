import 'package:flutter/material.dart';
import 'package:myproject/model/student.dart';

class OutputView extends StatelessWidget {
  const OutputView({super.key, required this.student});

  final Student student;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Student Details")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "First Name: ${student.fname}",
              style: TextStyle(fontSize: 20),
            ),
            Text("Last Name: ${student.lname}", style: TextStyle(fontSize: 20)),
            Text("City: ${student.city}", style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}