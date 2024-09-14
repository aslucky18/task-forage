import 'package:flutter/material.dart';
import '../constants.dart';
import 'login_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Text(
                'Welcome to Task Forge',
                style: TextStyle(
                  color: w1,
                  fontSize: 32,
                ),
              ),
              Text(
                'Please login to your account or create new account to continue',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: w1,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height * .06,
                  width: MediaQuery.of(context).size.width - 36,
                  color: Color(0xff8875FF),
                  child: Text('Login'),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height * .06,
                width: MediaQuery.of(context).size.width - 36,
                decoration:
                    BoxDecoration(border: Border.all(color: Color(0xff8875FF))),
                child: Text('Create Account'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
