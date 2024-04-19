import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notebook/Constants/Colors.dart';
import 'package:notebook/Screens/Sign_page.dart';

class OpeningScreen extends StatelessWidget {
  const OpeningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: 140),
          child: Column(
            children: [
              Image(
                image: AssetImage('assets/images/opening.png'),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'NOTEBOOK',
                style: GoogleFonts.passionOne(
                  fontSize: 60,
                  color: mainColor,
                  letterSpacing: 2.0,
                ),
              ),
              Text(
                'Transforming Learning, Shaping Tomorrow',
                style: GoogleFonts.actor(
                  fontSize: 13,
                ),
              ),
              SizedBox(
                height: 60,
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
                        return SignUpPage();
                      }));
                    },
                  ),

                  //  child: Center(
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50, top: 8),
                child: Container(
                  height: 55,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: mainColor, width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: TextButton(
                    child: Text(
                      'Log In',
                      style: GoogleFonts.passionOne(
                          fontSize: 20, color: mainColor),
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
        ),
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
