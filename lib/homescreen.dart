import 'package:data_base/get_started.dart';
import 'package:data_base/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                    colors: [Colors.black, Colors.pink, Colors.black])),
            height: 843,
            width: 500,
            child: Center(
                child: Column(
              children: [
                Container(
                  height: 460,
                  width: 700,
                  child: Image.asset(
                    'assets/splash/bank2.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(height: 50),
                Text(
                  'Bank of Orizon',
                  style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
                SizedBox(height: 15),
                Text(
                  'Concept your money to your \nfriends, family & experience.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade400),
                ),
                SizedBox(height: 30),
                Container(
                    clipBehavior: Clip.hardEdge,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(50)),
                    height: 60,
                    width: 300,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Get_started()));
                        },
                        child: Text(
                          'Get Started',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ))),
                SizedBox(height: 30),
                Text(
                  'Explore Our Features',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade400),
                )
              ],
            )),
          ),
        ],
      ),
    );
  }
}

/*ElevatedButton(
                      onPressed: () async {
                        var prefs = await SharedPreferences.getInstance();
                        prefs.setBool('login', false);
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LogIn(),
                            ));
                      },
                      child: Text(
                        'Logout',
                        style: TextStyle(fontSize: 30),
                      )),*/
