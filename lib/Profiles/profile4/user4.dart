class User {
  String name;
  String profession;
  String aboutMe;
  User({
    this.name,
    this.profession,
    this.aboutMe,
  });
}

class Profile {
  User user;
  int followers;
  int following;
  int friends;

  Profile({
    this.user,
    this.followers,
    this.following,
    this.friends,
  });
}
