import '../../User/model/user.dart';

class Place {
  String id;
  String name;
  String description;
  String urlImage;
  int likes;
  User userOwner;

  Place({
    required this.id,
    required this.name,
    required this.description,
    required this.urlImage,
    this.likes = 0,
    required this.userOwner
  });
}
