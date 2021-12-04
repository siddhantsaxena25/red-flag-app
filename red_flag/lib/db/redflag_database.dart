import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import '../models/user.dart';
import '../models/case.dart';
import '../models/report.dart';

class RedFlagDatabase {
  static final RedFlagDatabase instance = RedFlagDatabase._init();

  static Database? _database;

  RedFlagDatabase._init();

  Future<Database> get database async {
    if(_database != null) return _database!;

    _database = await _initDB("redflag.db");
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _createDB, onConfigure: _onConfigure);
  }

  static Future _onConfigure(Database db) async {
    await db.execute("PRAGMA foreign_keys = ON");
  }

  Future _createDB(Database db, int version) async {
    await db.execute(
      '''
      CREATE TABLE $tableUsers (
        ${UserFields.aadharNumber} INTEGER PRIMARY KEY UNIQUE NOT NULL,
        ${UserFields.password} TEXT NOT NULL,
      )
      '''
    );

    await db.execute(
      '''
      CREATE TABLE $tableCases (
        ${CaseFields.caseNumber} INTEGER PRIMARY KEY AUTOINCREMENT,
        ${CaseFields.state} TEXT NOT NULL,
        ${CaseFields.district} TEXT NOT NULL,
        ${CaseFields.name} TEXT NOT NULL,
        ${CaseFields.age} INTEGER NOT NULL,
        ${CaseFields.appearance} TEXT NOT NULL,
        ${CaseFields.gender} TEXT NOT NULL,
        ${CaseFields.appearance} TEXT NOT NULL,
        ${CaseFields.illness} TEXT NOT NULL,
        ${CaseFields.dateOfDisappearance} TEXT NOT NULL,
        ${CaseFields.timeOfDisappearance} TEXT NOT NULL,
        ${CaseFields.placeOfDisappearance} TEXT NOT NULL,
        FOREIGN KEY (${CaseFields.aadharNumber}) REFERENCES $tableUsers (${UserFields.aadharNumber})
      )
      '''
    );

    await db.execute(
      '''
      CREATE TABLE $tableReports (
        ${ReportFields.reportNumber} INTEGER PRIMARY KEY AUTOINCREMENT,
        ${ReportFields.state} TEXT NOT NULL,
        ${ReportFields.district} TEXT NOT NULL,
        ${ReportFields.date} TEXT NOT NULL,
        ${ReportFields.time} TEXT NOT NULL,
        ${ReportFields.place} TEXT NOT NULL,
        ${ReportFields.age} INTEGER NOT NULL,
        ${ReportFields.gender} TEXT NOT NULL,
        ${ReportFields.appearance} TEXT NOT NULL,
        FOREIGN KEY (${ReportFields.aadharNumber}) REFERENCES $tableUsers (${UserFields.aadharNumber})
      )
      '''
    );
  }
}
