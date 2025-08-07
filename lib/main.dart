import 'package:flutter/material.dart';
import 'package:plan_note/core/services/service_locator.dart';
import 'package:plan_note/core/storage/shared_preferences/cache_helper.dart';
import 'package:plan_note/plan_note_app.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
  await CacheHelper().init();
  runApp(const PlanNoteApp());
}
