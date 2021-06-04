import 'package:Docker/login.dart';
import 'package:Docker/signup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 38),
          Container(
            height: 750,
            child: Center(
              child: Column(
                //   mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 60),
                  Text('Welcome To',
                      style: GoogleFonts.rubik(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Text('Docker Management',
                      style: GoogleFonts.rubik(
                          fontSize: 30, fontWeight: FontWeight.bold)),
                  SizedBox(height: 60),
                  Container(
                    width: 250,
                    child: Image.asset(
                      'assets/docker.png',
                    ),
                  ),
                  SizedBox(height: 150),
                  Container(
                      height: 50.0,
                      width: 250,
                      child: Material(
                          borderRadius: BorderRadius.circular(20.0),
                          shadowColor: Colors.blue,
                          color: Colors.blue,
                          elevation: 7.0,
                          child: MaterialButton(
                              child: Text('LOGIN ',
                                  style: GoogleFonts.montserrat(
                                      color: Colors.white)),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Login()),
                                );
                              }))),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      height: 50.0,
                      width: 250,
                      child: Material(
                          borderRadius: BorderRadius.circular(20.0),
                          shadowColor: Colors.blue,
                          color: Colors.blue,
                          elevation: 7.0,
                          child: MaterialButton(
                              child: Text('SIGN UP',
                                  style: GoogleFonts.montserrat(
                                      color: Colors.white)),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Signup()),
                                );
                              }))),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
