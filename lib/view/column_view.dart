import 'package:flutter/material.dart';

class ColumnView extends StatefulWidget {
  const ColumnView({super.key});

  @override
  State<ColumnView> createState() => _ColumnViewState();
}

class _ColumnViewState extends State<ColumnView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Column View"),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Container(
        color: Colors.yellow,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Icon(Icons.star, size: 50),
            Icon(Icons.star, size: 50),
            Spacer(),
            Icon(Icons.star, size: 50),
          ],
        ),
      ),
    );
  }
}
