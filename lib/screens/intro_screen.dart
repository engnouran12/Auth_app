import 'package:flutter/material.dart';
import 'package:tss/wedget/button.dart';


//import 'wed';

class Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 60),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'photoes/logo.png',
                  height: 500,
                ),
                Orignal_button(
                  text: 'Get Started',
                  textcolor: Colors.lightBlue,
                  bgcolor: Colors.white,
                  onpressed: () => Navigator.of(context).pushNamed('login'),
                ),
              ]),
        ),
      ),
    );
  }
}
