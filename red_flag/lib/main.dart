import 'package:flutter/material.dart';

import './sign_in_screen.dart';
import './login_screen.dart';
import './home_page_ongoing_cases.dart';
import './file_a_case_screen.dart';
import './report_a_child_screen.dart';
import './dashboard_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
      routes: {
        LoginScreen.routeName: (BuildContext context) => LoginScreen(),
        SignInScreen.routeName: (BuildContext context) => SignInScreen(),
        OngoingCasesScreen.routeName: (BuildContext context) => OngoingCasesScreen(),
        FileACaseScreen.routeName: (BuildContext context) => FileACaseScreen(),
        ReportAChildScreen.routeName: (BuildContext context) => ReportAChildScreen(),
        DashboardScreen.routeName: (BuildContext context) => DashboardScreen(),
      },
    );
  }
}

