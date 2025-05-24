import 'package:flutter/material.dart';
import 'package:myproject/common/my_snackbar.dart';

class CommonCardView extends StatelessWidget {
  final String title;
  final Color color;

  const CommonCardView({super.key, required this.title, required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showMySnackbar(context: context, content: "Card Clicked", color: color);
      },
      child: SizedBox(
        height: 200,
        width: double.infinity,
        child: Card(
          elevation: 5,
          color: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
