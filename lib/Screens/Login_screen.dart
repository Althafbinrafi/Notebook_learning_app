import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notebook/Constants/Colors.dart';
import 'package:notebook/Screens/Sign_page.dart';
import 'package:notebook/Screens/dashboard_main.dart';
import 'package:notebook/Screens/opening_screen.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            margin: const EdgeInsets.only(top: 100),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const Image(
                    image: AssetImage('assets/images/login.png'),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Log In to Your Account',
                    style:
                        GoogleFonts.passionOne(fontSize: 40, color: mainColor),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  buildTextField(
                    context: context,
                    controller: _usernameController,
                    hintText: 'Username',
                    prefixIcon: Icons.account_circle,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your username';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  buildTextField(
                    context: context,
                    controller: _passwordController,
                    hintText: 'Password',
                    prefixIcon: Icons.lock,
                    obscureText: true,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
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
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15)),
                      ),
                      child: TextButton(
                        child: Text(
                          'Log In',
                          style: GoogleFonts.passionOne(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // Validation passed, proceed with login
                            // Implement your login logic here
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DashHome()),
                            );
                          }
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an Account?"),
                      const SizedBox(
                        width: 15,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpPage()),
                          );
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: Container(
        height: 45,
        width: 45,
        alignment: Alignment.topLeft,
        margin: const EdgeInsets.only(top: 60, left: 20),
        child: ClipRRect(
          child: FloatingActionButton(
            backgroundColor: mainColor,
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const OpeningScreen()),
              );
            },
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
    );
  }

  Widget buildTextField({
    required BuildContext context,
    required TextEditingController controller,
    required String hintText,
    required IconData prefixIcon,
    bool obscureText = false,
    String? Function(String?)? validator,
  }) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.black, width: 1)),
      ),
      width: MediaQuery.of(context).size.width / 1.2,
      child: Row(
        children: [
          Icon(
            prefixIcon,
            color: mainColor,
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: TextFormField(
              controller: controller,
              obscureText: obscureText,
              decoration: InputDecoration(
                hintText: hintText,
                border: InputBorder.none,
              ),
              validator: validator,
            ),
          ),
        ],
      ),
    );
  }
}
