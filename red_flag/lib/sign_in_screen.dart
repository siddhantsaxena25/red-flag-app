import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './login_screen.dart';
import './home_page_ongoing_cases.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  static const routeName = "/sign_in_screen";

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  var _aadharController;
  var _passwordController;
  var _confirmPasswordController;

  @override
  void initState() {
    super.initState();

    _aadharController = TextEditingController();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();    
  }

  @override
  void dispose() {
    
    _aadharController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Start of sign in screen

      body: Center(
        child: Container(
          // Contents go here in main Container

          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 52.0,
          ),
          color: Colors.red,
          child: Column(
            // All widgets are be shown columnwise

            mainAxisAlignment: MainAxisAlignment
                .spaceEvenly, // All widgets are spaced evenly on the screen
            crossAxisAlignment: CrossAxisAlignment
                .start, // All widgets will be displayed from the left side of the screen onwards
            children: [
              // Widgets displayed from now on

              IconButton(
                tooltip: "Back to login screen",
                onPressed: () {
                  Navigator.of(context).pop(LoginScreen.routeName);
                },
                icon: const Icon(
                  Icons.arrow_back_rounded,
                  color: Colors.white,
                  size: 48.0,
                ),
              ),

              // Sign In title
              Text(
                "Sign In",
                style: GoogleFonts.manrope(
                  color: Colors.white,
                  fontSize: 48.0,
                  fontWeight: FontWeight.w500,
                ),
              ),

              // Aadhar and password details
              Container(
                width: double.infinity,
                child: Wrap(
                  runSpacing: 16.0,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  children: [
                    // Aadhar number
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Aadhar number",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 24.5,
                            ),
                          ),
                          // Aadhar number field
                          Container(
                            height: 40.0,
                            child: TextField(
                              controller: _aadharController,
                              style: GoogleFonts.poppins(fontSize: 19.0),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  borderSide:
                                      const BorderSide(color: Colors.white),
                                ),
                                contentPadding: const EdgeInsets.fromLTRB(
                                    10.0, 0.0, 10.0, 10.0),
                                filled: true,
                                fillColor: Colors.white,
                                hintText: "XXXX XXXX XXXX",
                                hintStyle: GoogleFonts.poppins(),
                              ),
                              keyboardType: TextInputType.number,
                              textAlignVertical: TextAlignVertical.center,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Password
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Password",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 24.5,
                            ),
                          ),
                          // Password field
                          Container(
                            height: 40.0,
                            child: TextField(
                              controller: _passwordController,
                              style: GoogleFonts.poppins(fontSize: 19.0),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  borderSide:
                                      const BorderSide(color: Colors.white),
                                ),
                                contentPadding: const EdgeInsets.fromLTRB(
                                    10.0, 0.0, 10.0, 10.0),
                                filled: true,
                                fillColor: Colors.white,
                                hintText: "Enter password",
                                hintStyle: GoogleFonts.poppins(),
                              ),
                              obscureText: true,
                              keyboardType: TextInputType.visiblePassword,
                              textAlignVertical: TextAlignVertical.center,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Confirm password
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Confirm password",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 24.5,
                            ),
                          ),
                          // Password field
                          Container(
                            height: 40.0,
                            child: TextField(
                              controller: _confirmPasswordController,
                              style: GoogleFonts.poppins(fontSize: 19.0),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  borderSide:
                                      const BorderSide(color: Colors.white),
                                ),
                                contentPadding: const EdgeInsets.fromLTRB(
                                    10.0, 0.0, 10.0, 10.0),
                                filled: true,
                                fillColor: Colors.white,
                                hintText: "Enter password again",
                                hintStyle: GoogleFonts.poppins(),
                              ),
                              obscureText: true,
                              keyboardType: TextInputType.visiblePassword,
                              textAlignVertical: TextAlignVertical.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // Sign in button
              Center(
                child: TextButton(
                  onPressed: () {
                    if (_aadharController.text == "" && _passwordController.text == "" && _confirmPasswordController.text == "") {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                          "Enter sign in details.",
                          style: GoogleFonts.poppins(fontSize: 16.0),
                          ),
                        )
                      );
                    }

                    else {
                      if (_aadharController.text == "") {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              "Enter your Aadhar number.",
                              style: GoogleFonts.poppins(fontSize: 16.0),
                            )
                          )
                        );
                      }

                      else if (_passwordController.text == "") {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              "Enter your password.",
                              style: GoogleFonts.poppins(fontSize: 16.0),
                            )
                          )
                        );
                      }

                      else if (_confirmPasswordController.text == "") {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              "Please confirm your password.",
                              style: GoogleFonts.poppins(fontSize: 16.0),
                            )
                          )
                        );
                      }

                      else if (_passwordController.text != _confirmPasswordController.text) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              "Wrong password entered while confirmation.",
                              style: GoogleFonts.poppins(fontSize: 16.0),
                            )
                          )
                        );
                      }

                      else {
                        Navigator.of(context).pushNamed(OngoingCasesScreen.routeName);
                      }
                    }
                  },
                  child: Text(
                    "SIGN IN",
                    style: GoogleFonts.poppins(
                      color: Colors.red,
                      fontSize: 26.0,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 2.0,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 22.0,
                      vertical: 15.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
