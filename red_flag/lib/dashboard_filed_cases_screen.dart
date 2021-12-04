import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './login_screen.dart';
import './file_a_case_screen.dart';
import './report_a_child_screen.dart';
import './dashboard_screen.dart';
import './home_page_ongoing_cases.dart';
import './ongoing_case_details_screen.dart';

class DashboardFiledCasesScreen extends StatefulWidget {
  const DashboardFiledCasesScreen({Key? key}) : super(key: key);

  static const routeName = "/dashboard_filed_cases_screen";

  @override
  _DashboardFiledCasesScreenState createState() =>
      _DashboardFiledCasesScreenState();
}

class _DashboardFiledCasesScreenState extends State<DashboardFiledCasesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(66.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            "Filed cases",
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
          padding: const EdgeInsets.all(4.0),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .pushNamed(OngoingCaseDetailsScreen.routeName);
                },
                child: Container(
                  color: Colors.white,
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/boy.jpg',
                        height: 72.0,
                        width: 72.0,
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("Case Number:  ",
                                  style: GoogleFonts.poppins(fontSize: 16.0)),
                              Text("2W3R-144F-87YX",
                                  style: GoogleFonts.poppins(fontSize: 16.0)),
                            ],
                          ),
                          Row(
                            children: [
                              Text("Name:  ",
                                  style: GoogleFonts.poppins(fontSize: 16.0)),
                              Text("John Doe",
                                  style: GoogleFonts.poppins(fontSize: 16.0)),
                            ],
                          ),
                          Row(
                            children: [
                              Text("Age:  ",
                                  style: GoogleFonts.poppins(fontSize: 16.0)),
                              Text("11",
                                  style: GoogleFonts.poppins(fontSize: 16.0)),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              GestureDetector(
                onTap: () => print("pressed."),
                child: Container(
                  color: Colors.white,
                  child: Row(
                    children: [
                     Image.asset(
                        'assets/girl.jpg',
                        height: 72.0,
                        width: 72.0,
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("Case Number:  ",
                                  style: GoogleFonts.poppins(fontSize: 16.0)),
                              Text("8HG5-MJ82-PF56",
                                  style: GoogleFonts.poppins(fontSize: 16.0)),
                            ],
                          ),
                          Row(
                            children: [
                              Text("Name:  ",
                                  style: GoogleFonts.poppins(fontSize: 16.0)),
                              Text("Jane Roe",
                                  style: GoogleFonts.poppins(fontSize: 16.0)),
                            ],
                          ),
                          Row(
                            children: [
                              Text("Age:  ",
                                  style: GoogleFonts.poppins(fontSize: 16.0)),
                              Text("10",
                                  style: GoogleFonts.poppins(fontSize: 16.0)),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              GestureDetector(
                onTap: () => print("pressed."),
                child: Container(
                  color: Colors.white,
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/boy.jpg',
                        height: 72.0,
                        width: 72.0,
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("Case Number:  ",
                                  style: GoogleFonts.poppins(fontSize: 16.0)),
                              Text("9HG3-6Y5G-987F",
                                  style: GoogleFonts.poppins(fontSize: 16.0)),
                            ],
                          ),
                          Row(
                            children: [
                              Text("Name:  ",
                                  style: GoogleFonts.poppins(fontSize: 16.0)),
                              Text("Richard Doe",
                                  style: GoogleFonts.poppins(fontSize: 16.0)),
                            ],
                          ),
                          Row(
                            children: [
                              Text("Age:  ",
                                  style: GoogleFonts.poppins(fontSize: 16.0)),
                              Text("12",
                                  style: GoogleFonts.poppins(fontSize: 16.0)),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Center(
                child: TextButton(
                  onPressed: () =>
                      Navigator.of(context).pushNamed(DashboardScreen.routeName),
                  child: Text(
                    "Return to dashboard",
                    style: GoogleFonts.poppins(
                      color: Color(0xFF107C10),
                      fontSize: 17.5,
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
