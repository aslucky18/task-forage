import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../constants.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({
    super.key,
  });

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  int _currentIndex = 0;
  final TextEditingController _newTaskController = TextEditingController();
  List<Widget> body = [
    HomeContainer(),
    CustomCalendar(),
    CustomCalendar(),
    CustomCalendar(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: GestureDetector(
          onTap: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return Padding(
                  padding: EdgeInsets.all(24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Add Task',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      TextField(
                        controller: _newTaskController,
                        decoration: InputDecoration(
                            hintText: 'Task title',
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(18)))),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      TextField(
                        controller: _newTaskController,
                        decoration: InputDecoration(
                            hintText: 'Description',
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(18)))),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.access_alarm,
                                size: 24,
                              ),
                              SizedBox(
                                width: 18,
                              ),
                              Icon(
                                Bootstrap.tag,
                                size: 24,
                              ),
                              SizedBox(
                                width: 18,
                              ),
                              Icon(
                                Bootstrap.flag,
                                size: 24,
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.send,
                              size: 24,
                              color: btnColor,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                );
              },
            );
          },
          child: CircleAvatar(
            radius: 36,
            backgroundColor: btnColor,
            child: Icon(Icons.add),
          ),
        ),
        appBar: AppBar(
          actions: [
            SizedBox(
              height: 60,
              width: 60,
              child: CircleAvatar(
                radius: 25.5,
                backgroundColor: w1,
                child: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/profile.jpg'),
                ),
              ),
            )
          ],
          title: Text(_currentIndex == 0
              ? 'Index'
              : _currentIndex == 1
                  ? "Calender"
                  : _currentIndex == 2
                      ? 'Focus'
                      : 'Profile'),
          centerTitle: true,
          leading: Icon(
            Icons.menu,
            color: w1,
          ),
        ),
        body: body[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: btnColor,
          useLegacyColorScheme: false,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month),
              label: 'Calender',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.access_time_rounded),
              label: 'Focus',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
          },
        ));
  }
}

class CustomCalendar extends StatefulWidget {
  const CustomCalendar({
    super.key,
  });

  @override
  State<CustomCalendar> createState() => _CustomCalendarState();
}

class _CustomCalendarState extends State<CustomCalendar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Will be available Soon...',
          textAlign: TextAlign.center,
          style: TextStyle(color: w1, fontSize: 30),
        ),
      ],
    );
  }
}

class HomeContainer extends StatelessWidget {
  const HomeContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Column(
            children: [
              Image.asset(
                'assets/Checklist-rafiki 1.png',
              ),
              Text(
                'What do you want to do today?',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                'Tap + to add your tasks',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        )
      ],
    );
  }
}
