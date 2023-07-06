import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'glass.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Loginpage(),
    );
  }
}
class Loginpage extends StatelessWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/tanushree.png.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            //Image.asset("images/forest.webp"),
            AppBar(),
            Loginwid(),
          ],
        ),
      ),
    );
  }
}
class AppBar extends StatelessWidget {
  const AppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.all(20.0),
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.blue,
          ),
        ),
        Text("Welcome to our App",
        style: TextStyle(
          color: Colors.white,
        ),),
        Padding(
          padding: const EdgeInsets.all(60.0),
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Text("Home",
              style: TextStyle(
                color: Colors.white70,
              ),),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Text("Join",
              style: TextStyle(
                color: Colors.white70,
              ),),
          ),
        ),
      ],
    );
  }
}
class Loginwid extends StatelessWidget {
  const Loginwid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Text("START FOR FREE...",
                style: TextStyle(
                  color: Colors.white70
                )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Text("Creat New Account",
                    style: TextStyle(
                      fontSize: 30,
                        color: Colors.white
                    )),
                Text(".",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 35
                ),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Text("Already a member?",
                style: TextStyle(
                  color: Colors.white70
                ),),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Text(" Log in",
                    style: TextStyle(
                      color: Colors.black,
                    ),),
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          glass(),
          SizedBox(
            height: 1,
          ),
          email(),
          SizedBox(
            height: 15,
          ),
          Password(),
          Button(),
        ],
      ),
    );
  }
}
class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Neumorphic(
                style: NeumorphicStyle(
                  shape: NeumorphicShape.flat,
                  boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(10)),
                  depth: 3,
                  lightSource: LightSource.bottomRight,
                  color: Colors.blue,
                ),
                child: Container(
                  height: 50,
                  width: 150,
                  alignment: Alignment.center,
                  child: Text(
                    "Create Account",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
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





