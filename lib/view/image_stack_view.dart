import 'package:flutter/material.dart';

class ImageStackView extends StatefulWidget {
  const ImageStackView({super.key});

  @override
  State<ImageStackView> createState() => _ImageStackViewState();
}

class _ImageStackViewState extends State<ImageStackView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Stack"),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      backgroundColor: Colors.amber,
      body: Stack(
        children: [
          Positioned(
            top: 10,
            left: MediaQuery.of(context).size.width * 0.5 - 150,
            child: Container(
              width: 300,
              height: 360,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          Positioned(
            top: 70,
            right: 120,
            child: SizedBox(
              height: 250,
              width: 200,
              child: Image.network(
                "https://w0.peakpx.com/wallpaper/776/690/HD-wallpaper-spiderchibi-chibi-cute-spiderman.jpg",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
