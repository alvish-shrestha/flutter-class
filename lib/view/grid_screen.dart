import 'package:flutter/material.dart';

class GridScreen extends StatefulWidget {
  const GridScreen({super.key});

  @override
  State<GridScreen> createState() => _GridScreenState();
}

class _GridScreenState extends State<GridScreen> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View Screen"),
        backgroundColor: Colors.cyanAccent,
        centerTitle: true,
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(8),
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        crossAxisCount: 3,
        children: [
          for (int i = 1; i <= 10; i++) ...{
            SizedBox(
              height: 100,
              width: 100,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    selectedIndex = i;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      selectedIndex == i ? Colors.yellow : Colors.grey,
                  foregroundColor: Colors.black,
                ),
                child: Text("Button $i"),
              ),
            ),
          },
        ],
      ),
    );
  }
}
