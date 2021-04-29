class User {
  final String name;
  final String profession;

  User({
    this.name,
    this.profession,
  });
}

class Profile {
  final User user;

  Profile({
    this.user,
  });
}
