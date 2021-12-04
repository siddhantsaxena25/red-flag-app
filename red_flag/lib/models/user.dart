final String tableUsers = "users";

class UserFields {
  static final List<String> values = [
    aadharNumber, password
  ];

  static final String aadharNumber = "aadharNumber";
  static final String password = "password";
}

class User {
  final int aadharNumber;
  final String password;

  const User({
    required this.aadharNumber,
    required this.password,
  });
}
