import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:progect4/firebase.dart';
void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( firebase());
}