import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './login_screen.dart';
import './home_page_ongoing_cases.dart';
import './file_a_case_screen.dart';
import './report_a_child_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({ Key? key }) : super(key: key);

  static const routeName = "/dashboard_screen";

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(66.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            "Dashboard",
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
                            "Aadhar number",
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
                          const SizedBox(height: 36.0,),
                          Container(
                            width: double.infinity,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pushNamed(OngoingCasesScreen.routeName);
                                  },
                                  child: Text(
                                    "Ongoing Cases",
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pushNamed(FileACaseScreen.routeName);
                                  },
                                  child: Text(
                                    "File a case",
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pushNamed(ReportAChildScreen.routeName);
                                  },
                                  child: Text(
                                    "Report a missing child",
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text(
                                    "Dashboard",
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 30.0,
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
                                      fontSize: 30.0,
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
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 36.0,),
                          const Divider(
                            thickness: 4.0,
                            color: Colors.white,
                          ),
                          const SizedBox(height: 40.0,),
                          Center(
                            child: TextButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed(LoginScreen.routeName);
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
      body: const Center(
        child: Text(
          "To be build.",
        ),
      ),
    );
  }
}