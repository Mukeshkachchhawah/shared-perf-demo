/* import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_perf/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'login.dart';

////////////// Steps /////
// 1. Add Pagckage Shared Perferences
// 2. initState function call
//3. logic bild whertogo function
class Splace_Screens extends StatefulWidget {
  const Splace_Screens({super.key});

  @override
  State<Splace_Screens> createState() => Splace_ScreensState();
}

class Splace_ScreensState extends State<Splace_Screens> {
  static const KeyLogin = "Login";
  @override
  void initState() {
    super.initState();

    WherToGo();
  }

  void WherToGo() async {
    /// sp = SharedPreferences
 
    var sp = await SharedPreferences.getInstance();
    var isLoginIn = sp.getBool(KeyLogin);

    Timer(Duration(seconds: 3), () {
      ////// Check IsLoginIn null value ///////
      ////// value are null chack true and false ////
      if (isLoginIn != null) {
        if (isLoginIn) {
          ///// true ////////
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => Home()));
        } else {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => Shared_Pref()));
        }
      } else {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Shared_Pref()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: FlutterLogo(
        size: 100,
      ),
    ));
  }
}
 */


import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_perf/home.dart';
import 'package:shared_perf/login.dart';
import 'package:shared_perf/register.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splace_Screens extends StatefulWidget {
  const Splace_Screens({super.key});

  @override
  State<Splace_Screens> createState() => Splace_ScreensState();
}

class Splace_ScreensState extends State<Splace_Screens> {

  static const Keyvalue = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Shared_Prefens();
  }

  void Shared_Prefens() async{
    var sp = await SharedPreferences.getInstance();
    var isLoginIn = sp.getBool(Keyvalue);

    Timer(Duration(
      seconds: 5
    ), () { 
      if(isLoginIn!=null){
        if(isLoginIn){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home()));
        }else{
           Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login()));
        }
      }else{
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Register()));
      }
    });
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        
          children: [
            Text(
              "Splace Screens",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
