class User {
// props ...
  String name;
  String address;
  String about;
// constr ...
  User({
    this.name,
    this.address,
    this.about,
  });
}

class Profile {
// props ...
  User user;
  int followers;
  int following;
  int friends;
// constr ...
  Profile({
    this.followers,
    this.following,
    this.friends,
    this.user,
  });
}
