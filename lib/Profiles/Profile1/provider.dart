import 'package:flutter_profiles_ui/Profiles/Profile1/user.dart';

class Profile1Provider {
  static Profile getProfile() {
    return Profile(
      user: User(
          name: 'Erick Walters',
          about:
              'simply dummy text of the printing and typesettird only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
          address: '677 Adams bybass'),
      followers: 2100,
      following: 120,
      friends: 175,
    );
  }
}
