// ignore_for_file: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:iti_flutter_project/firebase_options.dart';
import 'package:iti_flutter_project/homelayout.dart';
import 'package:iti_flutter_project/welcom.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:first_page(),
    );
  }
}
