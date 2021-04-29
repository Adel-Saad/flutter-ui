import 'package:flutter_profiles_ui/Profiles/Profile3/user.dart';

class Profile3Provider {
  static Profile3 getProfile() {
    return Profile3(
        user: User(
            name: 'Erik Walters',
            address: '677 AdamBypass',
            aboutMe:
                "long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content "),
        followers: 200,
        following: 500,
        friends: 350,
        photos: 25);
  }
}
