import 'package:flutter/material.dart';
import 'package:myproject/model/arithemetic_model.dart';

class ArithemeticNewView extends StatefulWidget {
  const ArithemeticNewView({super.key});

  @override
  State<ArithemeticNewView> createState() => _ArithematicNewViewState();
}

class _ArithematicNewViewState extends State<ArithemeticNewView> {
  late ArithemeticModel arithemeticModel;

  int result = 0;

  final firstController = TextEditingController();
  final secondController = TextEditingController();

  // step 1. key
  final myKey = GlobalKey<FormState>();

  String? groupValue = "myGroup";

  void calculate() {
    arithemeticModel = ArithemeticModel(
      first: int.parse(firstController.text),
      second: int.parse(secondController.text),
    );

    if (groupValue == "add") {
      setState(() {
        result = arithemeticModel.add();
      });
    } else if (groupValue == "sub") {
      setState(() {
        result = arithemeticModel.sub();
      });
    } else if (groupValue == "mul") {
      setState(() {
        result = arithemeticModel.mul();
      });
    } else if (groupValue == "div") {
      setState(() {
        result = arithemeticModel.div().toInt();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Arithmetic"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: myKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "First Number",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  controller: firstController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter first number!";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Second Number",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  controller: secondController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter second number";
                    }
                    return null;
                  },
                ),
                ListTile(
                  title: const Text("Add"),
                  leading: Radio(
                    value: "add",
                    groupValue: groupValue,
                    
                    onChanged: (String? value) {
                      setState(() {
                        groupValue = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text("Subtract"),
                  leading: Radio(
                    value: "sub",
                    groupValue: groupValue,
                    onChanged: (String? value) {
                      setState(() {
                        groupValue = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text("Multiply"),
                  leading: Radio(
                    value: "mul",
                    groupValue: groupValue,
                    onChanged: (String? value) {
                      setState(() {
                        groupValue = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text("Divide"),
                  leading: Radio(
                    value: "div",
                    groupValue: groupValue,
                    onChanged: (String? value) {
                      setState(() {
                        groupValue = value!;
                      });
                    },
                  ),
                ),
                SizedBox(height: 8),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    onPressed: () {
                      if (myKey.currentState!.validate()) {
                        calculate();
                      }
                    },
                    child: Text("Calculate"),
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Result: $result",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
