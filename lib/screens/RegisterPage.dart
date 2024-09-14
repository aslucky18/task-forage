
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import 'login_screen.dart';


class RegisterPage extends StatelessWidget {
  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _cfmpassword = TextEditingController();
  RegisterPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Register',
                  style: TextStyle(
                    fontSize: 32,
                  ),
                ),
                SizedBox(
                  height: 36,
                ),
                Text(
                  'Username',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                TextField(
                  controller: _username,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: 'Enter your username',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Text(
                  'Password',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                TextField(
                  controller: _password,
                  textInputAction: TextInputAction.next,
                  obscureText: true,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                    hintText: '***********************',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Text(
                  'Confirm Password',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                TextField(
                  controller: _cfmpassword,
                  textInputAction: TextInputAction.next,
                  obscureText: true,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                    hintText: '***********************',
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height * .06,
                  width: MediaQuery.of(context).size.width - 36,
                  decoration: BoxDecoration(color: Color(0xff8875FF)),
                  child: Text('Register'),
                ),
                SizedBox(
                  height: 18,
                ),
                Text('Or'),
                SizedBox(
                  height: 18,
                ),
                Container(
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height * .06,
                  width: MediaQuery.of(context).size.width - 36,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff8875FF))),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Bootstrap.google),
                      SizedBox(
                        width: 8,
                      ),
                      Text('Google'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Container(
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height * .06,
                  width: MediaQuery.of(context).size.width - 36,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff8875FF))),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Bootstrap.apple),
                      SizedBox(
                        width: 8,
                      ),
                      Text('Apple'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    GestureDetector(
                      onTap: () => Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                              builder: (context) => LoginScreen())),
                      child: Text(
                        'Login',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

