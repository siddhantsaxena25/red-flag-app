import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './login_screen.dart';
import './home_page_ongoing_cases.dart';
import './file_a_case_screen.dart';
import './dashboard_screen.dart';
import './report_confirmation_screen.dart';

class ReportAChildScreen extends StatefulWidget {
  const ReportAChildScreen({Key? key}) : super(key: key);

  static const routeName = "/report_a_child_screen";

  static var reportNumber = "R186-A1S3-78G6";
  static var state = "";
  static var district = "";
  static var date = "";
  static var time = "";
  static var place = "";
  static var age = "";
  static var gender = "";
  static var appearance = "";

  @override
  _ReportAChildScreenState createState() => _ReportAChildScreenState();
}

class _ReportAChildScreenState extends State<ReportAChildScreen> {

  var _stateController;
  var _districtController;
  var _dateController;
  var _timeController;
  var _placeController;
  var _ageController;
  var _genderController;
  var _appearanceController;

  @override
  void initState() {
    super.initState();

    _stateController = TextEditingController();
    _districtController = TextEditingController();
    _dateController = TextEditingController();
    _timeController = TextEditingController();
    _placeController = TextEditingController();
    _ageController = TextEditingController();
    _genderController = TextEditingController();
    _appearanceController = TextEditingController();
  }

  @override
  void dispose() {
    
    _stateController.dispose();
    _districtController.dispose();
    _dateController.dispose();
    _timeController.dispose();
    _placeController.dispose();
    _ageController.dispose();
    _genderController.dispose();
    _appearanceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(66.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            "Report missing child",
            style: GoogleFonts.manrope(
              color: Colors.white,
              fontSize: 26.0,
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
                                    Navigator.of(context).pop();
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
          child: Wrap(
            alignment: WrapAlignment.center,
            runSpacing: 14.0,
            children: [
              //State field
              Container(
                child: Wrap(
                  children: [
                    Text(
                      "State:",
                      style: GoogleFonts.poppins(
                        color: Colors.red,
                        fontSize: 22.0,
                      ),
                    ),
                    TextField(
                      controller: _stateController,
                      style: GoogleFonts.poppins(fontSize: 19.0),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: const BorderSide(
                            color: Color(0xFF6F6363),
                          ),
                        ),
                        contentPadding:
                            const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
                        hintText: "Enter state",
                        hintStyle: GoogleFonts.poppins(),
                        fillColor: Colors.grey[300],
                        filled: true,
                      ),
                    ),
                  ],
                ),
              ),

              //District field
              Container(
                child: Wrap(
                  children: [
                    Text(
                      "District:",
                      style: GoogleFonts.poppins(
                        color: Colors.red,
                        fontSize: 22.0,
                      ),
                    ),
                    TextField(
                      controller: _districtController,
                      style: GoogleFonts.poppins(fontSize: 19.0),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: const BorderSide(
                            color: Color(0xFF6F6363),
                          ),
                        ),
                        contentPadding:
                            const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
                        hintText: "Enter District",
                        hintStyle: GoogleFonts.poppins(),
                        fillColor: Colors.grey[300],
                        filled: true,
                      ),
                    ),
                  ],
                ),
              ),

              //Date field
              Container(
                child: Wrap(
                  children: [
                    Text(
                      "Date:",
                      style: GoogleFonts.poppins(
                        color: Colors.red,
                        fontSize: 22.0,
                      ),
                    ),
                    TextField(
                      controller: _dateController,
                      style: GoogleFonts.poppins(fontSize: 19.0),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: const BorderSide(
                            color: Color(0xFF6F6363),
                          ),
                        ),
                        contentPadding:
                            const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
                        hintText: "Enter Date",
                        hintStyle: GoogleFonts.poppins(),
                        fillColor: Colors.grey[300],
                        filled: true,
                      ),
                      keyboardType: TextInputType.datetime,
                    ),
                  ],
                ),
              ),

              //Time field
              Container(
                child: Wrap(
                  children: [
                    Text(
                      "Time:",
                      style: GoogleFonts.poppins(
                        color: Colors.red,
                        fontSize: 22.0,
                      ),
                    ),
                    TextField(
                      controller: _timeController,
                      style: GoogleFonts.poppins(fontSize: 19.0),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: const BorderSide(
                            color: Color(0xFF6F6363),
                          ),
                        ),
                        contentPadding:
                            const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
                        hintText: "Enter Time",
                        hintStyle: GoogleFonts.poppins(),
                        fillColor: Colors.grey[300],
                        filled: true,
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ],
                ),
              ),

              //Place field
              Container(
                child: Wrap(
                  children: [
                    Text(
                      "Place:",
                      style: GoogleFonts.poppins(
                        color: Colors.red,
                        fontSize: 22.0,
                      ),
                    ),
                    TextField(
                      controller: _placeController,
                      style: GoogleFonts.poppins(fontSize: 19.0),
                      minLines: 1,
                      maxLines: null,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: const BorderSide(
                            color: Color(0xFF6F6363),
                          ),
                        ),
                        contentPadding:
                            const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
                        hintText: "Enter Place",
                        hintStyle: GoogleFonts.poppins(),
                        fillColor: Colors.grey[300],
                        filled: true,
                      ),
                      keyboardType: TextInputType.multiline,
                    ),
                  ],
                ),
              ),

              //Age field
              Container(
                child: Wrap(
                  children: [
                    Text(
                      "Approximate age:",
                      style: GoogleFonts.poppins(
                        color: Colors.red,
                        fontSize: 22.0,
                      ),
                    ),
                    TextField(
                      controller: _ageController,
                      style: GoogleFonts.poppins(fontSize: 19.0),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: const BorderSide(
                            color: Color(0xFF6F6363),
                          ),
                        ),
                        contentPadding:
                            const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
                        hintText: "Enter Age",
                        hintStyle: GoogleFonts.poppins(),
                        fillColor: Colors.grey[300],
                        filled: true,
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ],
                ),
              ),

              // Gender field
              Container(
                child: Wrap(
                  children: [
                    Text(
                      "Gender:",
                      style: GoogleFonts.poppins(
                        color: Colors.red,
                        fontSize: 22.0,
                      ),
                    ),
                    TextField(
                      controller: _genderController,
                      style: GoogleFonts.poppins(fontSize: 19.0),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: const BorderSide(
                            color: Color(0xFF6F6363),
                          ),
                        ),
                        contentPadding:
                            const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
                        hintText: "Enter Gender",
                        hintStyle: GoogleFonts.poppins(),
                        fillColor: Colors.grey[300],
                        filled: true,
                      ),
                    ),
                  ],
                ),
              ),

              // Appearance field
              Container(
                child: Wrap(
                  children: [
                    Text(
                      "Appearance:",
                      style: GoogleFonts.poppins(
                        color: Colors.red,
                        fontSize: 22.0,
                      ),
                    ),
                    TextField(
                      controller: _appearanceController,
                      style: GoogleFonts.poppins(fontSize: 19.0),
                      minLines: 1,
                      maxLines: null,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: const BorderSide(
                            color: Color(0xFF6F6363),
                          ),
                        ),
                        contentPadding:
                            const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
                        hintText: "Enter Appearance",
                        hintStyle: GoogleFonts.poppins(),
                        fillColor: Colors.grey[300],
                        filled: true,
                      ),
                      keyboardType: TextInputType.multiline,
                    ),
                  ],
                ),
              ),

              //Submit button
              TextButton(
                onPressed: () {
                  if (
                    _ageController.text == "" || 
                    _appearanceController.text == "" ||
                    _dateController.text == "" || 
                    _districtController.text == "" ||
                    _genderController.text == "" || 
                    _placeController.text == "" ||
                    _stateController.text == "" || 
                    _timeController.text == ""
                  ) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                        "Please fill all the details",
                        style: GoogleFonts.poppins(fontSize: 16.0),
                        )
                      )
                    );
                  }

                  else {
                    ReportAChildScreen.state = _stateController.text;
                    ReportAChildScreen.district = _districtController.text;
                    ReportAChildScreen.date = _dateController.text;
                    ReportAChildScreen.time = _timeController.text;
                    ReportAChildScreen.place = _placeController.text;
                    ReportAChildScreen.age = _ageController.text;
                    ReportAChildScreen.gender = _genderController.text;
                    ReportAChildScreen.appearance = _appearanceController.text;

                    Navigator.of(context).pushNamed(ReportConfirmationScreen.routeName);
                  }
                },
                child: Text(
                  "File Report",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 26.0,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 2.0,
                  ),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 22.0,
                    vertical: 15.0,
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
