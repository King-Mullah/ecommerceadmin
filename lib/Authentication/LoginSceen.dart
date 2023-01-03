import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../Screen/HomePage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: Center(
        child: SizedBox(
          width: 400,
          height: 300,
          child: Neumorphic(
            style: NeumorphicStyle(
              depth: 10,
              shadowDarkColorEmboss: Colors.black12,
              shadowLightColorEmboss: Colors.white12,
              color: Colors.pink[100],
              border: NeumorphicBorder(
                width: 2,
                color: Colors.pink[100],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Neumorphic(
                    style: NeumorphicStyle(
                      depth: -5,
                      shadowLightColorEmboss: Colors.white,
                      shadowDarkColorEmboss: Colors.black38,
                      color: Colors.pink[100],
                    ),
                    child: TextField(
                      controller: nameController,
                      decoration: const InputDecoration(
                        hintText: 'Your Name',
                        labelText: 'Name',
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        labelStyle: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                        hintStyle: TextStyle(
                          color: Colors.white,
                        ),
                        filled: true,
                        //fillColor: Colors.pink,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Neumorphic(
                    style: NeumorphicStyle(
                      depth: -5,
                      shadowLightColorEmboss: Colors.white,
                      shadowDarkColorEmboss: Colors.black38,
                      color: Colors.pink[100],
                    ),
                    child: TextField(
                      controller: nameController,
                      decoration: const InputDecoration(
                        hintText: 'Password',
                        labelText: 'Password',
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.white,
                        ),
                        labelStyle: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                        hintStyle: TextStyle(
                          color: Colors.white,
                        ),
                        filled: true,
                        //fillColor: Colors.pink,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Neumorphic(
                          style: NeumorphicStyle(
                            depth: 5,
                            shadowDarkColorEmboss: Colors.black38,
                            shadowLightColorEmboss: Colors.white12,
                            color: Colors.pink[100],
                          ),
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const DashboardPage()));
                            },
                            child: const Text(
                              'Login',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
