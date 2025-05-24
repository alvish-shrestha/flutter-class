import 'package:flutter/material.dart';

class FirstView extends StatefulWidget {
  const FirstView({super.key});

  @override
  State<FirstView> createState() => _FirstViewState();
}

class _FirstViewState extends State<FirstView> {
  int result = 0;

  final firstController = TextEditingController();
  final secondController = TextEditingController();

  // Step 1: key
  final myKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(text: const TextSpan(
          text: "Arithmetic ",
          style: TextStyle(
            color: Colors.black,
            fontSize: 30
          ),
          children: <TextSpan> [
            TextSpan(
              text: "bold",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            TextSpan(
              text: " view",
            ),
          ]
        )),
        centerTitle: true,
        backgroundColor: Colors.red,
        // elevation: 0, // shadow hataunw
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: myKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Enter first number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Colors.amber, width: 2),
                  ),
                ),
                keyboardType: TextInputType.number,
                controller: firstController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter a number";
                  }
                  return null;
                },
              ),
              SizedBox(height: 8),
          
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Enter second number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Colors.amber, width: 2),
                  ),
                ),
                keyboardType: TextInputType.number,
                controller: secondController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter a number";
                  }
                  return null;
                },
              ),
              SizedBox(height: 8),
          
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    if (myKey.currentState!.validate()) {
                      // Logic
                      int first = int.parse(firstController.text);
                      int second = int.parse(secondController.text);
                      setState(() {
                        result = first + second;
                      });
                    }
                  },
                  child: Text("Add"),
                ),
              ),
              SizedBox(height: 8),
              Text("Result: $result"),

              SizedBox(height: 10),
              Container(
                color: Colors.blueGrey,
                width: 300,
                child: const Text("Hello World",  
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
