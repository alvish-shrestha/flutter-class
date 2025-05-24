import 'package:flutter/material.dart';

class ColumnView2 extends StatefulWidget {
  const ColumnView2({super.key});

  @override
  State<ColumnView2> createState() => _ColumnView2State();
}

class _ColumnView2State extends State<ColumnView2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Column button"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        color: Colors.yellow,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {}, child: const Text("Button 1")),
              ElevatedButton(onPressed: () {}, child: const Text("Button 2")),
              ElevatedButton(onPressed: () {}, child: const Text("Button 3")),
            ],
          ),
        ),
      ),
    );
  }
}
