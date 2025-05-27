import 'package:flutter/material.dart';

class StackView extends StatefulWidget {
  const StackView({super.key});

  @override
  State<StackView> createState() => _StackViewState();
}

class _StackViewState extends State<StackView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack"),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 400,
            width: double.infinity,
            color: Colors.amber,
            child: Text("First Container"),
          ),
          Positioned(
            top: 1,
            right: 1,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.green,
              child: Text("Second Container"),
            ),
          ),
          Positioned(
            bottom: -20,
            right: 400 / 2 - 50,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.red,
              child: Text("Third Container"),
            ),
          ),
        ],
      ),
    );
  }
}
