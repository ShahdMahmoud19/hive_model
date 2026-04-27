import 'package:flutter/material.dart';
import 'package:hive_model/hive.dart';
import 'package:hive_model/home/data/models/hive_model.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  HiveModel().init();
  runApp(const Hive());
}

