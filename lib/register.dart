import 'package:flutter/material.dart';
import 'package:shared_perf/login.dart';
import 'package:shared_perf/splace_screens.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home.dart';

/////////Data Base //////////
/////////// Shared Preferences ////////////
class Register extends StatefulWidget {
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();

  TextEditingController PasswordController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initPraf();
  }

  void initPraf() async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Sign Up",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: emailController,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please enter name";
                }
                return null;
              },
              decoration: InputDecoration(
                hintText: "Enter your name",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: emailController,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please enter name";
                }
                return null;
              },
              decoration: InputDecoration(
                hintText: "Enter your name",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: emailController,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please enter name";
                }
                return null;
              },
              decoration: InputDecoration(
                hintText: "Enter your name",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: PasswordController,
              validator: (value) {
                if (value == "" || value!.length < 5) {
                  return "Please enter password";
                }
                return null;
              },
              decoration: InputDecoration(
                hintText: "Enter your Password",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () async {
                  // ////// If Successfully Logged in(creds are Correct ////////)

                  if (_formKey.currentState!.validate()) {
                

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  }
                },
                child: Text("Click"))
          ],
        ),
      ),
    );
  }
}
