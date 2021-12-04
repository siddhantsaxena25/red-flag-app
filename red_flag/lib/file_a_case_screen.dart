import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

import './login_screen.dart';
import './home_page_ongoing_cases.dart';
import './report_a_child_screen.dart';
import './dashboard_screen.dart';
import './case_confirmation_screen.dart';

class FileACaseScreen extends StatefulWidget {
  FileACaseScreen({Key? key}) : super(key: key);

  static const routeName = "/file_a_case_screen";

  static var caseNumber = "2W3R-144F-87YX";
  static var state = "";
  static var district = "";
  static var date = "";
  static var time = "";
  static var place = "";
  static var name = "";
  static var age = "";
  static var gender = "";
  static var appearance = "";
  static var illness = "";

  static File? image;

  static Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;

      final imageTemp = File(image.path);
      FileACaseScreen.image = imageTemp;
    } on PlatformException catch (e) {
      print("Failed to pick an image: $e");
    }
  }

  @override
  _FileACaseScreenState createState() => _FileACaseScreenState();
}

class _FileACaseScreenState extends State<FileACaseScreen> {
  var _stateController;
  var _districtController;
  var _dateController;
  var _timeController;
  var _placeController;
  var _nameController;
  var _ageController;
  var _genderController;
  var _appearanceController;
  var _illnessController;

  @override
  void initState() {
    super.initState();

    _stateController = TextEditingController();
    _districtController = TextEditingController();
    _dateController = TextEditingController();
    _timeController = TextEditingController();
    _placeController = TextEditingController();
    _nameController = TextEditingController();
    _ageController = TextEditingController();
    _genderController = TextEditingController();
    _appearanceController = TextEditingController();
    _illnessController = TextEditingController();
  }

  @override
  void dispose() {
    _stateController.dispose();
    _districtController.dispose();
    _dateController.dispose();
    _timeController.dispose();
    _placeController.dispose();
    _nameController.dispose();
    _ageController.dispose();
    _genderController.dispose();
    _appearanceController.dispose();
    _illnessController.dispose();

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
            "File a case",
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
                                    Navigator.of(context).pop();
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
                      "Date of disappearance:",
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
                      "Time of disappearance:",
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
                      "Place of disappearance:",
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

              //Name field
              Container(
                child: Wrap(
                  children: [
                    Text(
                      "Name:",
                      style: GoogleFonts.poppins(
                        color: Colors.red,
                        fontSize: 22.0,
                      ),
                    ),
                    TextField(
                      controller: _nameController,
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
                        hintText: "Enter Name",
                        hintStyle: GoogleFonts.poppins(),
                        fillColor: Colors.grey[300],
                        filled: true,
                      ),
                    ),
                  ],
                ),
              ),

              //Age field
              Container(
                child: Wrap(
                  children: [
                    Text(
                      "Age:",
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

              //Gender field
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
                        hintText: "Enter gender",
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

              // Illness field
              Container(
                child: Wrap(
                  children: [
                    Text(
                      "Illnesses, if any:",
                      style: GoogleFonts.poppins(
                        color: Colors.red,
                        fontSize: 22.0,
                      ),
                    ),
                    TextField(
                      controller: _illnessController,
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
                        hintText: "Enter Illnesses",
                        hintStyle: GoogleFonts.poppins(),
                        fillColor: Colors.grey[300],
                        filled: true,
                      ),
                      keyboardType: TextInputType.multiline,
                    ),
                  ],
                ),
              ),

              // Upload picture
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Upload Picture:",
                      style: GoogleFonts.poppins(
                        color: Colors.red,
                        fontSize: 22.0,
                      ),
                    ),
                    IconButton(
                      onPressed: () => FileACaseScreen.pickImage(),
                      icon: const Icon(
                        Icons.upload_rounded,
                        size: 38.0,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),

              //Submit button
              TextButton(
                onPressed: () {
                  if (_stateController.text == "" ||
                      _districtController.text == "" ||
                      _dateController.text == "" ||
                      _timeController.text == "" ||
                      _placeController.text == "" ||
                      _nameController.text == "" ||
                      _ageController.text == "" ||
                      _genderController.text == "" ||
                      _appearanceController.text == "" ||
                      _illnessController.text == "") {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          "Please enter all the details",
                          style: GoogleFonts.poppins(fontSize: 16.0),
                        ),
                      ),
                    );
                  } else {
                    FileACaseScreen.state = _stateController.text;
                    FileACaseScreen.district = _districtController.text;
                    FileACaseScreen.date = _dateController.text;
                    FileACaseScreen.time = _timeController.text;
                    FileACaseScreen.place = _placeController.text;
                    FileACaseScreen.name = _nameController.text;
                    FileACaseScreen.age = _ageController.text;
                    FileACaseScreen.gender = _genderController.text;
                    FileACaseScreen.appearance = _appearanceController.text;
                    FileACaseScreen.illness = _illnessController.text;

                    Navigator.of(context)
                        .pushNamed(CaseConfirmationScreen.routeName);
                  }
                },
                child: Text(
                  "File Case",
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
