import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';


class glass extends StatelessWidget {
  const glass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: GlassmorphicContainer(
                height: 50,
                width: 200,
                borderRadius: 20,
                blur: 20,
                alignment: Alignment.bottomCenter,
                border: 2,
                linearGradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFFffffff).withOpacity(0.1),
                    Color(0xFFFFFFFF).withOpacity(0.05),
                  ],
                  stops: [
                    0.1,
                    1,
                  ],
                ),
                borderGradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFFffffff).withOpacity(0.5),
                    Color((0xFFFFFFFF)).withOpacity(0.2),
                  ],
                ),
                child: Center(
                  child: TextField(
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'First Name',
                      suffixIcon: Align(
                        widthFactor: 1,
                        heightFactor: 1,
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                      ),
                      labelStyle: TextStyle(
                        height: 3.5,
                        color: Colors.white70,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          width: 10,
        ),
        GlassmorphicContainer(
          height: 50,
          width: 200,
          borderRadius: 20,
          blur: 20,
          border: 2,
          linearGradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFffffff).withOpacity(0.1),
              Color(0xFFFFFFFF).withOpacity(0.05),
            ],
            stops: [
              0.1,
              1,
            ],
          ),
          borderGradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFffffff).withOpacity(0.5),
              Color((0xFFFFFFFF)).withOpacity(0.2),
            ],
          ),
          child: Center(
            child: TextField(
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Second Name',
                suffixIcon: Align(
                  widthFactor: 1,
                  heightFactor: 1,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
                labelStyle: TextStyle(
                  height: 3.5,
                  color: Colors.white70,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
class email extends StatelessWidget {
  const email({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 20,
        ),
        GlassmorphicContainer(
          height: 50,
          width: 433,
          borderRadius: 20,
          blur: 20,
          border: 2,
          linearGradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFFffffff).withOpacity(0.1),
                Color(0xFFFFFFFF).withOpacity(0.05),
              ],
              stops: [
                0.1,
                1,
              ]),
          borderGradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFffffff).withOpacity(0.5),
              Color((0xFFFFFFFF)).withOpacity(0.2),
            ],
          ),
          child: Center(
            child: TextField(
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  suffixIcon: Align(
                    widthFactor: 2,
                    heightFactor: 1,
                    child: Icon(
                      Icons.mail,
                      color: Colors.white,
                    ),
                  ),
                  labelStyle: TextStyle(
                    height: 3.5,
                    color: Colors.white70,
                  )
              ),),
          ),
        ),
      ],
    );
  }
}
class Password extends StatefulWidget {
  const Password({Key? key}) : super(key: key);

  @override
  _PasswordState createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 20,
        ),
        GlassmorphicContainer(
          height: 50,
          width: 433,
          borderRadius: 20,
          blur: 20,
          border: 2,
          linearGradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFffffff).withOpacity(0.1),
              Color(0xFFFFFFFF).withOpacity(0.05),
            ],
            stops: [0.1, 1],
          ),
          borderGradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFffffff).withOpacity(0.5),
              Color(0xFFFFFFFF).withOpacity(0.2),
            ],
          ),
          child: Center(
            child: TextField(
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
              obscureText: _obscureText,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
                suffixIcon: GestureDetector(
                  onTap: _togglePasswordVisibility,
                  child: Icon(
                    _obscureText ? Icons.visibility : Icons.visibility_off,
                    color: Colors.white,
                  ),
                ),
                labelStyle: TextStyle(
                  height: 3.5,
                  color: Colors.white70,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}


