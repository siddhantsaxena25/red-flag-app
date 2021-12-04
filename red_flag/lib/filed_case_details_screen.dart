import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './login_screen.dart';
import './file_a_case_screen.dart';
import './report_a_child_screen.dart';
import './dashboard_screen.dart';
import './home_page_ongoing_cases.dart';

class FiledCaseDetailsScreen extends StatefulWidget {
  const FiledCaseDetailsScreen({Key? key}) : super(key: key);

  static const routeName = "./filed_case_details_screen";

  @override
  _FiledCaseDetailsScreenState createState() => _FiledCaseDetailsScreenState();
}

class _FiledCaseDetailsScreenState extends State<FiledCaseDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(66.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            "Case details",
            style: GoogleFonts.manrope(
              color: Colors.white,
              fontSize: 32.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: IconButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (BuildContext context) => Container(
                      padding:
                          const EdgeInsets.fromLTRB(16.0, 48.0, 16.0, 16.0),
                      color: Colors.red,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () => Navigator.of(context).pop(),
                            child: const Icon(
                              Icons.close_rounded,
                              size: 38.0,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 16.0,
                          ),
                          Text(
                            "Name",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 28.0,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 2.0,
                            ),
                          ),
                          Text(
                            LoginScreen.aadhar,
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 2.0,
                            ),
                          ),
                          const SizedBox(height: 12.0),
                          const Divider(
                            thickness: 4.0,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            height: 32.0,
                          ),
                          Container(
                            width: double.infinity,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pushNamed(
                                        OngoingCasesScreen.routeName);
                                  },
                                  child: Text(
                                    "Ongoing Cases",
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pushNamed(FileACaseScreen.routeName);
                                  },
                                  child: Text(
                                    "File a case",
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pushNamed(
                                        ReportAChildScreen.routeName);
                                  },
                                  child: Text(
                                    "Report a missing child",
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pushNamed(DashboardScreen.routeName);
                                  },
                                  child: Text(
                                    "Dashboard",
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Help/FAQs",
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Settings",
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 32.0,
                          ),
                          const Divider(
                            thickness: 4.0,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            height: 40.0,
                          ),
                          Center(
                            child: TextButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .pushNamed(LoginScreen.routeName);
                              },
                              child: Text(
                                "LOGOUT",
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
                  );
                },
                icon: const Icon(
                  Icons.menu_rounded,
                  size: 38.0,
                ),
              ),
            ),
          ],
          backgroundColor: Colors.red,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Row(
                  children: [
                    Image.file(
                      FileACaseScreen.image!,
                      width: 114.0,
                      height: 114.0,
                    ),
                    const SizedBox(width: 16.0),
                    Column(
                      children: [
                        Text(
                          "Case Number:",
                          style: GoogleFonts.poppins(
                            color: Colors.red,
                            fontSize: 22.0,
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          FileACaseScreen.caseNumber,
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 22.0,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 28.0,
              ),
              Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "State:",
                            style: GoogleFonts.poppins(
                              color: Colors.red,
                              fontSize: 22.0,
                            ),
                          ),
                          Text(
                            FileACaseScreen.state,
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "District:",
                            style: GoogleFonts.poppins(
                              color: Colors.red,
                              fontSize: 22.0,
                            ),
                          ),
                          Text(
                            FileACaseScreen.district,
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Date of disappearance:",
                            style: GoogleFonts.poppins(
                              color: Colors.red,
                              fontSize: 22.0,
                            ),
                          ),
                          Text(
                            FileACaseScreen.date,
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Time of disappearance:",
                            style: GoogleFonts.poppins(
                              color: Colors.red,
                              fontSize: 22.0,
                            ),
                          ),
                          Text(
                            FileACaseScreen.time,
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Place of disappearance:",
                            style: GoogleFonts.poppins(
                              color: Colors.red,
                              fontSize: 22.0,
                            ),
                          ),
                          Text(
                            FileACaseScreen.place,
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Name:",
                            style: GoogleFonts.poppins(
                              color: Colors.red,
                              fontSize: 22.0,
                            ),
                          ),
                          Text(
                            FileACaseScreen.name,
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Age:",
                            style: GoogleFonts.poppins(
                              color: Colors.red,
                              fontSize: 22.0,
                            ),
                          ),
                          Text(
                            FileACaseScreen.age,
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Gender:",
                            style: GoogleFonts.poppins(
                              color: Colors.red,
                              fontSize: 22.0,
                            ),
                          ),
                          Text(
                            FileACaseScreen.gender,
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Appearance:",
                            style: GoogleFonts.poppins(
                              color: Colors.red,
                              fontSize: 22.0,
                            ),
                          ),
                          Text(
                            FileACaseScreen.appearance,
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Illnesses, if any:",
                            style: GoogleFonts.poppins(
                              color: Colors.red,
                              fontSize: 22.0,
                            ),
                          ),
                          Text(
                            FileACaseScreen.illness,
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Center(
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed(OngoingCasesScreen.routeName);
                        },
                        child: Text(
                          "Return to home page",
                          style: GoogleFonts.poppins(
                            color: const Color(0xFF107C10),
                            fontSize: 17.5,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
