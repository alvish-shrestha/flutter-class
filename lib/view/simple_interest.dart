import 'package:flutter/material.dart';

class SimpleInterest extends StatefulWidget {
  const SimpleInterest({super.key});

  @override
  State<SimpleInterest> createState() => _SimpleInterestState();
}

class _SimpleInterestState extends State<SimpleInterest> {
  double principal = 0;
  double time = 0;
  double rate = 0;
  double simpleInterest = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculate Simple Interest"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(labelText: "Enter principal"),
            keyboardType: TextInputType.number,
            onChanged: (value) {
              principal = double.parse(value);
            },
          ),
          SizedBox(height: 8),

          TextField(
            decoration: InputDecoration(labelText: "Enter time"),
            keyboardType: TextInputType.number,
            onChanged: (value) {
              time = double.parse(value);
            },
          ),
          SizedBox(height: 8),

          TextField(
            decoration: InputDecoration(labelText: "Enter rate"),
            keyboardType: TextInputType.number,
            onChanged: (value) {
              rate = double.parse(value);
            },
          ),
          SizedBox(height: 8),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  simpleInterest = (principal * time * rate) / 100;
                });
              },
              child: Text("Calculate Simple Interest"),
            ),
          ),
          SizedBox(height: 8),
          Text("Simple Interest: $simpleInterest"),
        ],
      ),
    );
  }
}
