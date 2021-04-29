class User {
  String name;
  String address;
  String about;
  User({
    this.about,
    this.address,
    this.name,
  });
}

class Profile {
  User user;
  int followers;
  int following;
  int friends;
  Profile({
    this.followers,
    this.following,
    this.friends,
    this.user,
  });
}
