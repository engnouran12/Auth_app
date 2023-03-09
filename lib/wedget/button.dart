import 'package:flutter/material.dart';

class Orignal_button extends StatelessWidget {
  final String text;
  final VoidCallback onpressed;
  final Color textcolor;
  final Color bgcolor;
  const Orignal_button(
      {required this.text, required this.onpressed, required this.textcolor, required this.bgcolor});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //to size button
      height: 40,
      width: double.infinity,
      // width: 60,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: bgcolor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        onPressed: onpressed,
        child: Text(
          text,
          style: TextStyle(
            color: textcolor,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
