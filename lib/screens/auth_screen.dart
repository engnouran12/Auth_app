import 'package:flutter/material.dart';
import 'package:tss/wedget/authoform.dart';

//2nd screen
enum Authtype { login, register }

class Auto extends StatelessWidget {
  final Authtype authtype;
  const Auto({super.key, required this.authtype});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  decoration: const BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(60),
                        bottomRight: Radius.circular(60),
                      )),
                ),
                Column(children: [
                  SizedBox(
                    height: 60,
                  ),
                  Text(
                    ' Hello !',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.3,
                    ),
                  ),
                  Image.asset(
                    'photoes/logo.png',
                    height: 300,
                  ),
                  Auth_form(
                    authtype: authtype,
                  ),
                ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
