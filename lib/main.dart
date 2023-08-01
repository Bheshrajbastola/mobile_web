import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:jobhunt/core/app.dart';
import 'package:jobhunt/screens/applicant/data/data_source/local/DbHelper.dart';
import 'package:jobhunt/screens/applicant/data/data_source/local/TodoHelper.dart';
import 'package:jobhunt/screens/applicant/data/data_source/local/appliedjob.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DbHelper.initDb();
  await TodoHelper.initDb();
  await JobHelper.initDb();
  await GetStorage.init();
  runApp(const MyApp());
}



