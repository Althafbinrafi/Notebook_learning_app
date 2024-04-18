import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notebook/Constants/Colors.dart';
import 'package:notebook/Screens/opening_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: const Color.fromARGB(255, 0, 0, 0)),
      ),
      body: Center(
        child: Container(
          //color: Colors.amber,
          margin: EdgeInsets.only(top: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
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
                height: 40,
              ),
              Image.asset(
                'assets/images/splash.png',
                // width: 253,
                // height: 319,
                width: screenWidth / 1, // Half the screen width
                height:
                    (screenWidth / 1.3) * (319 / 253), // Keep the aspect ratio
              ),
              SizedBox(
                height: 50,
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
                      'Get Started',
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
        ),
      ),
    );
  }
}
