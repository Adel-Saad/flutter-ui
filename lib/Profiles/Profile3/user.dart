class User {
  final String name;
  final String address;
  final String aboutMe;

  User({
    this.name,
    this.address,
    this.aboutMe,
  });
}

class Profile3 {
  final User user;
  final int following;
  final int followers;
  final int friends;
  final int photos;

  Profile3({
    this.user,
    this.photos,
    this.following,
    this.followers,
    this.friends,
  });
}
