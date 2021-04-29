import 'package:flutter_profiles_ui/Profiles/profile2/profile.dart';

class Profile2Provider {
  static Profile getProfile() {
    return Profile(
      user: User(
        name: 'Erik Walters',
        address: '677 Adams Bypass',
        about:
            "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content ",
      ),
      followers: 1250,
      following: 120,
      friends: 130,
    );
  }
}
