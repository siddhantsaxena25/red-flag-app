import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './sign_in_screen.dart';
import './home_page_ongoing_cases.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static const routeName = "/login_screen";

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Start of login screen

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
            // All widgets are shown columnwise

            mainAxisAlignment:
                MainAxisAlignment.spaceEvenly, // All widgets are evenly spaced
            children: [
              // Widgets displayed from now on

              // Logo and App title
              Wrap(
                spacing: 4.0,
                children: [
                  Image.asset(
                    'assets/Logo.png',
                    width: 113.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Red Flag",
                        style: GoogleFonts.manrope(
                          textStyle:
                              const TextStyle(fontWeight: FontWeight.w600),
                          color: Colors.white,
                          fontSize: 40.0,
                        ),
                      ),
                      Text(
                        "An app to report missing\nchildren",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                          fontSize: 15.5,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              // Login details in a Container
              Container(
                width: double.infinity,
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.start,
                  runSpacing: 16.0,
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
                    )
                  ],
                ),
              ),

              // Login button
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(OngoingCasesScreen.routeName);
                },
                child: Text(
                  "LOGIN",
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
                      horizontal: 22.0, vertical: 15.0),
                ),
              ),

              // Sign in and Forgot password
              Container(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Sign in
                    Padding(
                      padding: const EdgeInsets.only(left: 50.0, right: 50.0),
                      child: Row(
                        children: [
                          Text(
                            "Don't have an account?",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                          ),
                          const SizedBox(height: 10.0,),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .pushNamed(SignInScreen.routeName);
                            },
                            child: Text(
                              "Sign in",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 16.0,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Forgot password
                    Padding(
                      padding: const EdgeInsets.only(left: 60.0, right: 60.0),
                      child: Row(
                        children: [
                          Text(
                            "Forgot password?",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                          ),
                          const SizedBox(height: 10.0,),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Click here",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 16.0,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
