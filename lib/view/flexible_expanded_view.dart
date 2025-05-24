import 'package:flutter/material.dart';
import 'package:myproject/common/my_snackbar.dart';

class FlexibleExpandedView extends StatefulWidget {
  const FlexibleExpandedView({super.key});

  @override
  State<FlexibleExpandedView> createState() => _FlexibleExpandedViewState();
}

class _FlexibleExpandedViewState extends State<FlexibleExpandedView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: () {
                showMySnackbar(context: context, content: "1 clicked");
              },
              child: Container(
                height: 400,
                width: double.infinity,
                color: Colors.yellow,
                alignment: Alignment.center,
                child: const Text(
                  "1",
                  style: TextStyle(fontSize: 50, color: Colors.black),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: GestureDetector(
              onDoubleTap: () {
                showMySnackbar(
                  context: context,
                  content: "2 clicked",
                  color: Colors.yellow,
                );
              },
              child: Container(
                height: 200,
                width: double.infinity,
                color: Colors.red,
                alignment: Alignment.center,
                child: const Text(
                  "2",
                  style: TextStyle(fontSize: 50, color: Colors.black),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
