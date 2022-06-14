import 'package:cloud_firestore/cloud_firestore.dart';

import '../../User/model/user_model.dart';

class Place {
  String id;
  String name;
  String description;
  String urlImage;
  int likes;
  bool liked;
  final List<DocumentReference> usersLiked;
  // UserModel userOwner;

  Place({
    this.id = '',
    required this.name,
    required this.description,
    required this.urlImage,
    this.likes = 0,
    this.liked = false,
    this.usersLiked = const [],
    // required this.userOwner
  });
}
