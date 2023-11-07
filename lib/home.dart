import 'package:flutter/material.dart';

import 'package:shared_perf/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late SharedPreferences prefe;
 late int app_open_count = 0;
///////// List Colors /////////
  var listColos = [Colors.blue, Colors.yellow, Colors.green, Colors.brown];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initPraf();
  }

  void initPraf() async {
    prefe = await SharedPreferences.getInstance();
    app_open_count = prefe.getInt("openCount") ?? 1;
  // app_open_count = app_open_count + 1;

  //  prefe.setInt("openCount", app_open_count+1);

     prefe.setInt("openCount", app_open_count == 4 ? 1 : app_open_count+1);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
      //  app_open_count % 3 == 0
      //     ? Colors.red.shade600
      //     : Colors.indigo.shade600,
      listColos[app_open_count-1],

      appBar: AppBar(
        title: Text("Shared Preferances"),
        elevation: 0,
      ),
      body: Column(
        children: [
          Center(
              child: Text(
            "$app_open_count",
            style: TextStyle(fontSize: 50),
          )),
          SizedBox(
            height: 20,
          ),

          //////// LogOut ///////////
          Center(
            child: ElevatedButton(
                onPressed: () async {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                child: Text("Logout")),
          )
        ],
      ),
    );
  }
}
