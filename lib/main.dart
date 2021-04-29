import 'package:flutter/material.dart';
import 'package:flutter_profiles_ui/Profiles/Profile3/profile3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Profile3(),
    );
  }
}
