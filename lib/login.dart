import 'package:flutter/material.dart';
import 'package:shared_perf/splace_screens.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home.dart';

/////////Data Base //////////
/////////// Shared Preferences ////////////
class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
              "Login",
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
                    var sp = await SharedPreferences.getInstance();
                    sp.setBool(Splace_ScreensState.Keyvalue, true);

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  }
                },
                child: Text("Click"))
          ],
        ),
      ),
    );
  }
}
