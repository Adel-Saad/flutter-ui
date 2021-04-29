import 'package:flutter/material.dart';

List<Widget> _aboutMe(profile, context) {
  return [
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 04),
      child: Text('ABOUT ME'),
    ),
    SizedBox(
      height: 04,
    ),
    Text(
      profile.user.about,
      style: TextStyle(
        height: 1.2,
        fontSize: 16,
      ),
    ),
  ];
}
