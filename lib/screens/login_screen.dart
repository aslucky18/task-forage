import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:taskforge/screens/RegisterPage.dart';

import 'IndexPage.dart';


class LoginScreen extends StatelessWidget {
  final TextEditingController _username = TextEditingController();
  LoginScreen({
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
                const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 32,
                  ),
                ),
                const SizedBox(
                  height: 36,
                ),
                const Text(
                  'Username',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                TextField(
                  controller: _username,
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    hintText: 'Enter your username',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                const Text(
                  'Password',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                TextField(
                  controller: _username,
                  textInputAction: TextInputAction.next,
                  obscureText: true,
                  obscuringCharacter: '*',
                  decoration: const InputDecoration(
                    hintText: '***********************',
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () => Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) =>  IndexPage())),
                  child: Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height * .06,
                    width: MediaQuery.of(context).size.width - 36,
                    decoration: const BoxDecoration(color: Color(0xff8875FF)),
                    child: const Text('Login'),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                const Text('Or'),
                const SizedBox(
                  height: 18,
                ),
                Container(
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height * .06,
                  width: MediaQuery.of(context).size.width - 36,
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xff8875FF))),
                  child: const Row(
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
                const SizedBox(
                  height: 18,
                ),
                Container(
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height * .06,
                  width: MediaQuery.of(context).size.width - 36,
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xff8875FF))),
                  child: const Row(
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
                const SizedBox(
                  height: 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Don\'t have an account?',
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    GestureDetector(
                      onTap: () => Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                              builder: (context) => RegisterPage())),
                      child: const Text(
                        'Register',
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
