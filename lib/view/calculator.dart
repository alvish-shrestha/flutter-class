import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final lstText = [
    "C",
    "*",
    "/",
    "<-",
    "1",
    "2",
    "3",
    "+",
    "4",
    "5",
    "6",
    "-",
    "7",
    "8",
    "9",
    "*",
    "%",
    "0",
    ".",
    "=",
  ];

  String displayText = '';
  String operator = '';
  double firstOperand = 0;

  void onButtonPressed(String value) {
    setState(() {
      if (RegExp(r'[0-9.]').hasMatch(value)) {
        displayText += value;
      } else if (value == 'C') {
        displayText = '';
        firstOperand = 0;
        operator = '';
      } else if (value == '<-') {
        if (displayText.isNotEmpty) {
          displayText = displayText.substring(0, displayText.length - 1);
        }
      } else if (['+', '-', '*', '/', '%'].contains(value)) {
        if (displayText.isNotEmpty) {
          firstOperand = double.tryParse(displayText) ?? 0;
          operator = value;
          displayText = '';
        }
      } else if (value == '=') {
        double secondOperand = double.tryParse(displayText) ?? 0;
        double result = 0;

        switch (operator) {
          case '+':
            result = firstOperand + secondOperand;
            break;
          case '-':
            result = firstOperand - secondOperand;
            break;
          case '*':
            result = firstOperand * secondOperand;
            break;
          case '/':
            result = secondOperand != 0 ? firstOperand / secondOperand : 0;
            break;
          case '%':
            result = firstOperand % secondOperand;
            break;
        }
        displayText = result.toString();
        operator = '';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
        backgroundColor: Colors.lightBlueAccent,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16),
              alignment: Alignment.bottomRight,
              child: Text(
                displayText,
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Divider(height: 1),
          Expanded(
            flex: 2,
            child: GridView.builder(
              itemCount: lstText.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
              ),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: ElevatedButton(
                    onPressed: () => onButtonPressed(lstText[index]),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      textStyle: TextStyle(fontSize: 22),
                    ),
                    child: Text(lstText[index]),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
