import 'package:flutter_profiles_ui/Profiles/profile4/user4.dart';

class Profile4Provider {
  static Profile getProfile() {
    return Profile(
        user: User(name: 'Erik Walters'),
        followers: 2318,
        following: 364,
        friends: 175);
  }
}
