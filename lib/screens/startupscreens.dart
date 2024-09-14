import 'package:flutter/material.dart';

import '../constants.dart';

class StartUpScreen extends StatelessWidget {
  const StartUpScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: b1,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/App logo.png',
            ),
            Text(
              'Task Forge',
              style: TextStyle(color: w1, fontSize: 40),
            ),
            Text(
              'Simplify Your Day, One Task at a Time!',
              style: TextStyle(
                color: w1,
              ),
            )
          ],
        ),
      ),
    );
  }
}
