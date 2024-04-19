import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notebook/Constants/Colors.dart';
import 'package:notebook/Screens/opening_screen.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
            child: Container(
          margin: EdgeInsets.only(top: 340),
          child: Column(
            children: [
              Text(
                'Create Your Account',
                style: GoogleFonts.passionOne(fontSize: 40, color: mainColor),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.black, width: 1))),
                width: MediaQuery.of(context).size.width / 1.2,
                child: Row(
                  children: [
                    Icon(
                      Icons.account_circle,
                      color: mainColor,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Username', border: InputBorder.none),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.black, width: 1))),
                width: MediaQuery.of(context).size.width / 1.2,
                child: Row(
                  children: [
                    Icon(
                      Icons.mail,
                      color: mainColor,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Email', border: InputBorder.none),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.black, width: 1))),
                width: MediaQuery.of(context).size.width / 1.2,
                child: Row(
                  children: [
                    Icon(
                      Icons.lock,
                      color: mainColor,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Password', border: InputBorder.none),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 140,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50, top: 8),
                child: Container(
                  height: 55,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: mainColor,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: TextButton(
                    child: Text(
                      'Sign Up',
                      style: GoogleFonts.passionOne(
                          fontSize: 20, color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return OpeningScreen();
                      }));
                    },
                  ),

                  //  child: Center(
                ),
              ),
            ],
          ),
        )),
      ),
      floatingActionButton: Container(
        height: 45,
        width: 45,
        alignment: Alignment.topLeft,
        margin: EdgeInsets.only(top: 60, left: 20),
        child: ClipRRect(
          borderRadius:
              BorderRadius.circular(40), // Adjust the radius as needed
          child: FloatingActionButton(
            backgroundColor: mainColor,
            child: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
    );
  }
}
