import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Center(
            child: Text(
              "Photos game! ",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        body: ImagePage(),
      ),
    ),
  ));
}

class ImagePage extends StatefulWidget {
  ImagePage({super.key});

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  @override
  var right = Random().nextInt(9) + 1;
  var left = Random().nextInt(9) + 1;

  void random() {
    setState(() {
      right = Random().nextInt(9) + 1;
      left = Random().nextInt(9) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 100,
        ),
        Text(
          left == right ? "Well Done" : "Try Again",
          style: const TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
        const SizedBox(
          height: 100,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            children: [
              Expanded(
                child: Image(
                  image: AssetImage(
                    "images/image-$right.png",
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                child: Image(
                  image: AssetImage(
                    "images/image-$left.png",
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 100,
        ),
        ElevatedButton(
          onPressed: () {
            random();
          },
          child: const Text("Click me"),
        ),
      ],
    );
  }
}
