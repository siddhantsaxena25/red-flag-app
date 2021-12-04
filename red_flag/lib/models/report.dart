final String tableReports = "reports";

class ReportFields {
  static final List<String> values = [
    reportNumber,
    state,
    district,
    date,
    time,
    place,
    age,
    gender,
    appearance,
    aadharNumber
  ];

  static final String reportNumber = "reportNumber";
  static final String state = "state";
  static final String district = "district";
  static final String date = "date";
  static final String time = "time";
  static final String place = "place";
  static final String age = "age";
  static final String gender = "gender";
  static final String appearance = "appearance";
  static final String aadharNumber = "aadharNumber";
}

class Report {
  final int reportNumber;
  final String state;
  final String district;
  final String date;
  final String time;
  final String place;
  final int age;
  final String gender;
  final String appearance;
  final int aadharNumber;

  const Report ({
    required this.reportNumber,
    required this.state,
    required this.district,
    required this.date,
    required this.time,
    required this.place,
    required this.age,
    required this.gender,
    required this.appearance,
    required this.aadharNumber
  });
}
