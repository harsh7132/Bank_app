import 'package:data_base/dbhelper.dart';
import 'package:data_base/signup.dart';
import 'package:flutter/material.dart';
import 'homescreen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LogIn extends StatefulWidget {
  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  var email = TextEditingController();
  var password = TextEditingController();
  DbHelper myDb = DbHelper.instance;
  List<Map<String, dynamic>> UserData = [];
  bool passenable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 839,
          color: Colors.black87,
          child: Padding(
            padding: const EdgeInsets.only(top: 100, left: 30, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Log In',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                SizedBox(
                  height: 60,
                ),
                TextField(
                  controller: email,
                  style: TextStyle(color: Colors.white),
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.account_circle_outlined,
                        color: Colors.grey,
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.pinkAccent, width: 2.0),
                          borderRadius: BorderRadius.circular(50)),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.pink, width: 2.0),
                          borderRadius: BorderRadius.circular(50)),
                      hintText: 'Email',
                      hintStyle: TextStyle(color: Colors.white),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50))),
                ),
                SizedBox(height: 30),
                TextField(
                  controller: password,
                  style: TextStyle(color: Colors.white),
                  keyboardType: TextInputType.text,
                  obscureText: passenable,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (passenable) {
                              passenable = false;
                            } else {
                              passenable = true;
                            }
                          });
                        },
                        icon: Icon(
                          passenable == true
                              ? FontAwesomeIcons.eye
                              : FontAwesomeIcons.eyeSlash,
                          color: Colors.orange,
                        )),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.pinkAccent, width: 2.0),
                        borderRadius: BorderRadius.circular(50)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.pink, width: 2.0),
                        borderRadius: BorderRadius.circular(50)),
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    /* Checkbox(
                        hoverColor: Colors.pinkAccent,
                        checkColor: Colors.white,
                        activeColor: Colors.pink,
                        onChanged: (bool? val) {
                          setState(() {
                            firstvalue = val!;
                          });
                        }),*/
                    Text(
                      'Remember me',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(width: 50),
                    TextButton(
                        onPressed: () {},
                        child: Text('Forgot Password?',
                            style: TextStyle(color: Colors.orange)))
                  ],
                ),
                SizedBox(height: 20),
                Stack(children: [
                  Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      height: 50,
                      width: 360,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Log In'),
                      )),
                  Container(
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.topRight,
                            colors: [
                              Colors.pink,
                              Colors.purpleAccent,
                              Colors.white
                            ])),
                    height: 50,
                    width: 360,
                    child: Center(
                        child: TextButton(
                      onPressed: () async {
                        var values = await myDb.Check(
                            email.text.toString(), password.text.toString());
                        if (values.isNotEmpty) {
                          /*var prefs = await SharedPreferences.getInstance();
                                  prefs.setBool('login', true);*/
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()));
                        } else if (values.isEmpty) {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text('Please First Sign Up'),
                                  actions: [
                                    TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text('Ok'))
                                  ],
                                );
                              });
                        } else {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text('Invalid Username and Password'),
                                  actions: [
                                    TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text('Ok'))
                                  ],
                                );
                              });
                        }
                      },
                      child: Text(
                        'Log In',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                  )
                ]),
                SizedBox(height: 160),
                Center(
                    child: Text(
                  'Or Sign in with',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 17),
                )),
                SizedBox(height: 15),
                Row(
                  children: [
                    SizedBox(
                      width: 90,
                    ),
                    Icon(
                      FontAwesomeIcons.apple,
                      color: Colors.white,
                      size: 30,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      FontAwesomeIcons.twitter,
                      color: Colors.white,
                      size: 30,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      FontAwesomeIcons.google,
                      color: Colors.white,
                      size: 30,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      FontAwesomeIcons.facebook,
                      color: Colors.white,
                      size: 30,
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      'Dont have an account ?',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignUp()));
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                            color: Colors.orange, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  /* void getData() async {
    var detail =
        await myDb.Check(email.text.toString(), password.text.toString());
    if (detail.isNotEmpty) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    } else if (detail.isEmpty) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Please fill entres'),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Ok'))
              ],
            );
          });
    } else {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Invalid Username and Password'),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Ok'))
              ],
            );
          });
    }
  }*/
}
