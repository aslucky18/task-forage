import 'package:flutter/material.dart';
import '../constants.dart';

class IntroScreen extends StatelessWidget {
  final title;
  final subTitle;
  final imgPath;
  final PageController controller;
  const IntroScreen({
    super.key,
    required this.title,
    required this.subTitle,
    required this.imgPath,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: b1,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 36),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  imgPath,
                ),
                Text(
                  title,
                  style: TextStyle(color: w1, fontSize: 32),
                ),
                Text(
                  textAlign: TextAlign.center,
                  subTitle,
                  style: TextStyle(
                    color: w1,
                    fontSize: 16,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
