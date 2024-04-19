// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notebook/Constants/Colors.dart';
import 'package:notebook/Screens/Login_screen.dart';
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
          margin: const EdgeInsets.only(top: 90),
          child: Column(
            children: [
              const Image(
                image: AssetImage('assets/images/signup.png'),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Create Your Account',
                style: GoogleFonts.passionOne(fontSize: 40, color: mainColor),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.black, width: 1))),
                width: MediaQuery.of(context).size.width / 1.2,
                child: Row(
                  children: [
                    Icon(
                      Icons.account_circle,
                      color: mainColor,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                            hintText: 'Username', border: InputBorder.none),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.black, width: 1))),
                width: MediaQuery.of(context).size.width / 1.2,
                child: Row(
                  children: [
                    Icon(
                      Icons.mail,
                      color: mainColor,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                            hintText: 'Email', border: InputBorder.none),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.black, width: 1))),
                width: MediaQuery.of(context).size.width / 1.2,
                child: Row(
                  children: [
                    Icon(
                      Icons.lock,
                      color: mainColor,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                            hintText: 'Password', border: InputBorder.none),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50, top: 8),
                child: Container(
                  height: 55,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: mainColor,
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
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
                        return const OpeningScreen();
                      }));
                    },
                  ),

                  //  child: Center(
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already have an Account?'),
                  const SizedBox(
                    width: 15,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const LoginPage();
                      }));
                    },
                    child: const Text(
                      'Log In',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ],
          ),
        )),
      ),
      floatingActionButton: Container(
        height: 45,
        width: 45,
        alignment: Alignment.topLeft,
        margin: const EdgeInsets.only(top: 60, left: 20),
        child: ClipRRect(
          // borderRadius:
          //     BorderRadius.circular(40), // Adjust the radius as needed
          child: FloatingActionButton(
            backgroundColor: mainColor,
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const OpeningScreen();
              }));
            },
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
    );
  }
}
