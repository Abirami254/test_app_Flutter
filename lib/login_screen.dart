// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var size = MediaQuery.of(context).size;
    return Scaffold(
        // ignore: avoid_unnecessary_containers
        body: SafeArea(
      child: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              // ignore: prefer_const_literals_to_create_immutables
              child: Column(children: [
                Text("Welcome",
                    style: TextStyle(fontSize: 30, color: Colors.black)),
                Text("Sign In ",
                    style: TextStyle(fontSize: 30, color: Colors.deepPurple)),
                Center(
                  child: Image.asset(
                    'assets/login.png',
                    width: 200,
                    height: 200,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: "Email Id",
                      labelStyle:
                          TextStyle(fontSize: 15, color: Colors.grey.shade400),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle:
                          TextStyle(fontSize: 15, color: Colors.grey.shade400),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                SizedBox(
                  height: 15,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "Forget Password",
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                  ),
                ),
                Container(
                    height: size.height / 14,
                    width: size.width,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.cyan, fontWeight: FontWeight.bold),
                    )),
              ]))),
    ));
  }
}
