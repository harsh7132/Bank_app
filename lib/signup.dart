import 'package:data_base/create_account.dart';
import 'package:data_base/dbhelper.dart';
import 'package:data_base/login.dart';
import 'package:data_base/notemodel.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var Firstname = TextEditingController();
  var lastname = TextEditingController();
  var Password = TextEditingController();
  var cpassword = TextEditingController();
  var Email = TextEditingController();

  List<Map<String, dynamic>> UserData = [];
  DbHelper myDb = DbHelper.instance;
  bool passenable = true;

  void SignUp() async {
    String fname = Firstname.text.trim();
    String pass = Password.text.trim();
    String email = Email.text.trim();
    String lname = lastname.text.trim();
    String cpass = cpassword.text.trim();

    if (fname == "" ||
        pass == "" ||
        email == "" ||
        lname == "" ||
        cpass == "") {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Enter Valid Details')));
    } else if (pass != cpass) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Password Not Match!!')));
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('User Created')));
      Navigator.push(context, MaterialPageRoute(builder: (context) => LogIn()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: 500,
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 20,
          ),
          Container(
            height: 70,
            width: 300,
            child: TextField(
              clipBehavior: Clip.hardEdge,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
              controller: Firstname,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  hintText: 'First name',
                  hintStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50))),
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 70,
            width: 300,
            child: TextField(
              clipBehavior: Clip.hardEdge,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
              controller: lastname,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  hintText: 'Last name',
                  hintStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50))),
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 70,
            width: 300,
            child: TextField(
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
              controller: Password,
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
                        color: Colors.grey,
                      )),
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50))),
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 70,
            width: 300,
            child: TextField(
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
              controller: cpassword,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  hintText: 'Conform Password',
                  hintStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50))),
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 70,
            width: 300,
            child: TextField(
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
              controller: Email,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50))),
            ),
          ),
          SizedBox(height: 50),
          SizedBox(width: 50),
          SizedBox(
              height: 50,
              width: 150,
              child: ElevatedButton(
                  onPressed: () async {
                    await myDb.addData(NoteModel(
                        Firstname.text.toString(),
                        lastname.text.toString(),
                        Password.text.toString(),
                        cpassword.text.toString(),
                        Email.text.toString()));
                    SignUp();
                  },
                  child: Text('Sign Up'),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                          side: BorderSide(color: Colors.blue))))),
          SizedBox(width: 20)
        ],
      ),
    ));
  }
}
