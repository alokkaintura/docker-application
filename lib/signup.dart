import 'package:Docker/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Container(
              height: 750,
              child: Center(
                child: Column(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 60),
                    Text('Sign Up',
                        style: GoogleFonts.rubik(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                    SizedBox(height: 30),
                    Container(
                      width: 250,
                      child: Image.asset(
                        'assets/docker.png',
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      height: 310,
                      width: 330,
                      //color: Colors.amber,
                      child: Column(
                        children: [
                          TextFormField(
                            obscureText: false,
                            keyboardType: TextInputType.emailAddress,
                            style: GoogleFonts.montserrat(),
                            decoration: InputDecoration(
                                hintText: "Enter Name",
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                suffixIcon: Icon(Icons.person),
                                border: new OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30))),
                          ),
                          SizedBox(height: 20.0),
                          TextFormField(
                            obscureText: false,
                            keyboardType: TextInputType.emailAddress,
                            style: GoogleFonts.montserrat(),
                            decoration: InputDecoration(
                                hintText: "Enter your email",
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                suffixIcon: Icon(Icons.mail_outline),
                                border: new OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30))),
                          ),
                          SizedBox(height: 20.0),
                          TextFormField(
                            obscureText: true,
                            style: GoogleFonts.montserrat(),
                            decoration: InputDecoration(
                                hintText: "Enter your password",
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                suffixIcon: Icon(Icons.lock_outlined),
                                border: new OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30))),
                          ),
                          SizedBox(height: 20.0),
                          TextFormField(
                            obscureText: false,
                            keyboardType: TextInputType.emailAddress,
                            style: GoogleFonts.montserrat(),
                            decoration: InputDecoration(
                                hintText: "Enter Server IP",
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                suffixIcon: Icon(Icons.wifi),
                                border: new OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30))),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                        height: 50.0,
                        width: 250,
                        child: Material(
                            borderRadius: BorderRadius.circular(20.0),
                            shadowColor: Colors.blue,
                            color: Colors.blue,
                            elevation: 7.0,
                            child: MaterialButton(
                                child: Text('SIGN UP ',
                                    style: GoogleFonts.montserrat(
                                        color: Colors.white)),
                                onPressed: () {}))),
                    SizedBox(height: 10),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Already have account? ',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                            ),
                          ),
                          SizedBox(width: 5.0),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Login()));
                            },
                            child: Text('Log In',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 18,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline)),
                          )
                        ]),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
