import 'package:flutter/material.dart';
import 'package:red_flag/dashboard_filed_cases_screen.dart';
import 'package:red_flag/dashboard_filed_reports_details_screen.dart';
import 'package:red_flag/dashboard_filed_reports_screen.dart';
import 'package:red_flag/ongoing_case_details_screen.dart';

import './sign_in_screen.dart';
import './login_screen.dart';
import './home_page_ongoing_cases.dart';
import './file_a_case_screen.dart';
import './report_a_child_screen.dart';
import './dashboard_screen.dart';
import './case_confirmation_screen.dart';
import './report_confirmation_screen.dart';
import './filed_case_details_screen.dart';
import './reported_case_details_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      routes: {
        LoginScreen.routeName: (BuildContext context) => LoginScreen(),
        SignInScreen.routeName: (BuildContext context) => SignInScreen(),
        OngoingCasesScreen.routeName: (BuildContext context) => OngoingCasesScreen(),
        FileACaseScreen.routeName: (BuildContext context) => FileACaseScreen(),
        ReportAChildScreen.routeName: (BuildContext context) => ReportAChildScreen(),
        DashboardScreen.routeName: (BuildContext context) => DashboardScreen(),
        CaseConfirmationScreen.routeName: (BuildContext context) => CaseConfirmationScreen(),
        ReportConfirmationScreen.routeName: (BuildContext context) => ReportConfirmationScreen(),
        FiledCaseDetailsScreen.routeName: (BuildContext context) => FiledCaseDetailsScreen(),
        ReportedCaseDetailsScreen.routeName: (BuildContext context) => ReportedCaseDetailsScreen(),
        OngoingCaseDetailsScreen.routeName: (BuildContext context) => OngoingCaseDetailsScreen(),
        DashboardFiledCasesScreen.routeName: (BuildContext context) => DashboardFiledCasesScreen(),
        DashboardFiledReportsScreen.routeName: (BuildContext context) => DashboardFiledReportsScreen(),
        DashboardFiledReportsDetailsScreen.routeName: (BuildContext context) => DashboardFiledReportsDetailsScreen()
      },
    );
  }
}
