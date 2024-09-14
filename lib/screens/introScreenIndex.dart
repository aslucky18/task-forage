import 'package:flutter/material.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../constants.dart';
import 'home_page.dart';
import 'introscreens.dart';

class IntroScreenIndex extends StatefulWidget {
  const IntroScreenIndex({
    super.key,
  });

  @override
  State<IntroScreenIndex> createState() => _IntroScreenIndexState();
}

class _IntroScreenIndexState extends State<IntroScreenIndex> {
  final PageController _introController = PageController();
  int _currentPage = 0;
  @override
  void initState() {
    super.initState();
    _introController.addListener(() {
      setState(() {
        _currentPage = _introController.page?.round() ?? 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          controller: _introController,
          children: [
            IntroScreen(
              controller: _introController,
              title: 'Manage your task',
              subTitle:
                  'You can easily manage all of your daily tasks in DoMe for free',
              imgPath: 'assets/Intro1.png',
            ),
            IntroScreen(
              controller: _introController,
              title: 'Create daily routine',
              subTitle:
                  'In task forge  you can create your personalized routine to stay productive',
              imgPath: 'assets/Intro2.png',
            ),
            IntroScreen(
              controller: _introController,
              title: 'Organize your tasks',
              subTitle:
                  'You can organize your daily tasks by adding your tasks into separate categories',
              imgPath: 'assets/Intro3.png',
            ),
          ],
        ),
        Container(
          alignment: Alignment(0, .95),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FittedBox(
                child: GestureDetector(
                  onTap: () {
                    if (_currentPage != 0) {
                      _introController.previousPage(
                        duration: Duration(milliseconds: 200),
                        curve: Curves.easeIn,
                      );
                    }
                  },
                  child: Container(
                    padding: EdgeInsets.all(18),
                    decoration: BoxDecoration(
                      color: trans,
                    ),
                    child: Text(
                      _currentPage == 0 ? '' : 'Back',
                      style: TextStyle(
                        color: w1,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              SmoothPageIndicator(
                controller: _introController,
                count: 3,
              ),
              FittedBox(
                child: GestureDetector(
                  onTap: () {
                    _currentPage == 2
                        ? Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ))
                        : _introController.nextPage(
                            duration: Duration(milliseconds: 200),
                            curve: Curves.easeIn);
                  },
                  child: Container(
                    padding: EdgeInsets.all(18),
                    decoration: BoxDecoration(
                      color: btnColor,
                    ),
                    child: Text(
                      _currentPage == 2 ? 'Get Started' : 'Next',
                      style: TextStyle(
                        color: w1,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
