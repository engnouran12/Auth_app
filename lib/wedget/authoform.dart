import 'dart:html';

import 'package:flutter/material.dart';
import 'package:tss/wedget/button.dart';

import '../screens/auth_screen.dart';
import '../services/auth_fire.dart';

// ignore: non_constant_identifier_names
//auth to log&reg

class Auth_form extends StatefulWidget {
  final Authtype authtype;
  const Auth_form({super.key, required this.authtype});

  @override
  State<Auth_form> createState() => _Auth_formState();
}

class _Auth_formState extends State<Auth_form> {
  final _formkey = GlobalKey<FormState>();
  var emailcontroller = TextEditingController();
  var passwordcontroller = TextEditingController();
  AuthBase authBase = AuthBase();
  @override
  Widget build(BuildContext context) {
    //var emailcontroller = TextEditingController();
    //var passwordcontroller = TextEditingController();
    // var value_data;
    String _Email = 'nourQgmail.com';
    String _password = '123456';
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Form(
            key: _formkey, // join2textform together
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: emailcontroller,
                  onFieldSubmitted: (value_data) {
                    print(emailcontroller);
                  },
                  validator: (value_data) => value_data!.length < 7
                      ? 'Enter a vaild Email'
                      : 'correct',
                  onChanged: (value_data) {
                    print(value_data);
                  },
                  decoration: InputDecoration(
                    labelText: 'Enter your Email',
                    hintText: 'example@gmail.com',
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: passwordcontroller,
                  onFieldSubmitted: (value_data) {
                    
                    print(value_data);
                  },
                  validator: (value_data) => value_data!.length < 6
                      ? 'password must be 6 ch at least'
                      : 'correct',
                       onChanged: (value_data) {
                    
                  },
                  decoration: InputDecoration(
                    labelText: 'Enter your Password',
                  ),
                  obscureText: true,
                  // onFieldSubmitted: (value_data) {
                  // print(value_data);
                  // },
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Orignal_button(
            text: widget.authtype == Authtype.login ? 'Login' : 'regisrer',
            onpressed: () async {
              if (_formkey.currentState!.validate()) {
                if (widget.authtype == Authtype.login) {
                  await authBase.loginWithEmailAndPassword(_Email, _password);
                  Navigator.of(context).pushReplacementNamed('home');
                }
              } else {
                await authBase.registerWithEmailAndPassword(_Email, _password);
                Navigator.of(context).pushReplacementNamed('home');
              }
            },
            textcolor: Colors.white,
            bgcolor: Colors.lightBlue,
          ),
          TextButton(
            child: Text(widget.authtype == Authtype.login
                ? 'Don\'t have an account?'
                : 'You have an account'),
            onPressed: (() {
              if (widget.authtype == Authtype.login) {
                Navigator.of(context).pushReplacementNamed(
                    'register'); //replace routes to free mem of stack
              } else {
                Navigator.of(context).pushReplacementNamed('login');
              }
            }),
          ),
        ],
      ),
    );
  }
}
