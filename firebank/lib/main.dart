import 'package:firebank/addfile.dart';
import 'package:firebank/details.dart';
import 'package:firebank/homepage.dart';
import 'package:firebank/loginpage.dart';
import 'package:firebank/mainpage.dart';
import 'package:firebank/signup.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(
    home: Mainpage(),
    routes: {
      "/signup": (context) => Signup(),
      "/details": (context) => Details(),
      "/adddonor": (context) => Addfile(),
    },
  ));
}
