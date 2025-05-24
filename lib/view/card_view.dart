import 'package:flutter/material.dart';
import 'package:myproject/common/common_card_view.dart';

class CardView extends StatefulWidget {
  const CardView({super.key});

  @override
  State<CardView> createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card View"),
        backgroundColor: Colors.cyan,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (int i = 0; i <= 100; i++) ...{
              if (i % 2 == 0) ...{
                CommonCardView(title: "Card $i", color: Colors.blue),
              } else ...{
                CommonCardView(title: "Card $i", color: Colors.red),
              },
            },
          ],
        ),
      ),
    );
  }
}
