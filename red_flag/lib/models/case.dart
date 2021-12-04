final String tableCases = "cases";

class CaseFields {
  static final List<String> values = [
    caseNumber,
    state,
    district,
    name,
    age,
    gender,
    appearance,
    illness,
    dateOfDisappearance,
    timeOfDisappearance,
    placeOfDisappearance,
    aadharNumber
  ];

  static final String caseNumber = "caseNumber";
  static final String state = "state";
  static final String district = "district";
  static final String name = "name";
  static final String age = "age";
  static final String gender = "gender";
  static final String appearance = "appearance";
  static final String illness = "illness";
  static final String dateOfDisappearance = "dateOfDisappearance";
  static final String timeOfDisappearance = "timeOfDisappearance";
  static final String placeOfDisappearance = "placeOfDisappearance";
  static final String aadharNumber = "aadharNumber";
}

class Case {
  final int caseNumber;
  final String state;
  final String district;
  final String name;
  final int age;
  final String gender;
  final String appearance;
  final String illness;
  final String dateOfDisappearance;
  final String timeOfDisappearance;
  final String placeOfDisappearance;
  final int aadharNumber;

  const Case ({
    required this.caseNumber,
    required this.state,
    required this.district,
    required this.name,
    required this.age,
    required this.gender,
    required this.appearance,
    required this.illness,
    required this.dateOfDisappearance,
    required this.timeOfDisappearance,
    required this.placeOfDisappearance,
    required this.aadharNumber
  });
}
