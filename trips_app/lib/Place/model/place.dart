import '../../User/model/user_model.dart';

class Place {
  String id;
  String name;
  String description;
  String urlImage;
  int likes;
  // UserModel userOwner;

  Place({
    this.id = '',
    required this.name,
    required this.description,
    required this.urlImage,
    this.likes = 0,
    // required this.userOwner
  });
}
