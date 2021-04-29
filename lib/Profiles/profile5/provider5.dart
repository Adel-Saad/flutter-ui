import 'package:flutter_profiles_ui/Profiles/profile5/user.dart';

class Provider5 {
  static Profile getProfile() {
    return Profile(
      user: User(
        name: 'John Smith',
        profession: 'Photography',
      ),
    );
  }

  static List<String> photos() {
    return List.generate(15, (index) {
      return 'assets/images/profiles/profile1.jpg';
    });
  }

  static List<String> videos() {
    return List.generate(15, (index) {
      return 'assets/images/profiles/profile1.jpg';
    });
  }

  static List<String> posts() {
    return List.generate(15, (index) {
      return 'assets/images/profiles/profile1.jpg';
    });
  }

  static List<String> friends() {
    return List.generate(15, (index) {
      return 'assets/images/profiles/profile1.jpg';
    });
  }
}
