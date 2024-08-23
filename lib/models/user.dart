
class User{
  final String name;
  final String nameID;
  final String? image;
  final String? bio;
  final int numberOfFollowers;
  final int numberOfFollowing;

  User({
    this.image ,
    required this.name ,
    required this.nameID ,
    this.bio,
    required this.numberOfFollowers,
    required this.numberOfFollowing,
  });
}