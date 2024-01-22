import 'package:flutter/material.dart';
import 'package:google_signup_flutter/login_page.dart';

//Replace your REVERSED_CLIENT_ID in info.plist file
//Replace your googleservice-info.plist file

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

