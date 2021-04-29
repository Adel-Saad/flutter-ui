class User {
  String name;
  User({
    this.name,
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
