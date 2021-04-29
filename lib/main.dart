import 'package:flutter/material.dart';
import './Profiles/Profile3/profile3.dart';
import './Profiles/profile4/profile4.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Profile4(),
    );
  }
}
