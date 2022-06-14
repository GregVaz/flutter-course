import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:trips_app/Place/model/place.dart';
import 'package:trips_app/User/bloc/bloc_user.dart';
import 'package:trips_app/User/model/user_model.dart';
import 'cart_image_with_fab_icon.dart';

class CardImageList extends StatefulWidget {
  UserModel user;

  CardImageList({ required this.user });

  @override
  State<StatefulWidget> createState() {
    return _CardImageList();
  }
}
late UserBloc userBloc;

class _CardImageList extends State<CardImageList> {
  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of<UserBloc>(context);

    return Container(
      height: 350.0,
      child: StreamBuilder(
        stream: userBloc.placesStream,
        builder: (context, AsyncSnapshot snapshot) {
          switch(snapshot.connectionState) {
            case ConnectionState.waiting:
              return CircularProgressIndicator();
            case ConnectionState.none:
              return CircularProgressIndicator();
            case ConnectionState.active:
              return listViewPlaces(userBloc.buildPlaces(snapshot.data.docs, widget.user));
            case ConnectionState.done:
              return listViewPlaces(userBloc.buildPlaces(snapshot.data.docs, widget.user));
          }
        },
      ),
    );
  }

  Widget listViewPlaces(List<Place> places) {
    void setLiked(Place place){
      setState(() {
        place.liked = !place.liked;
        userBloc.likePlace(place, widget.user.uid);
      });
    }

    return ListView(
      padding: EdgeInsets.all(25.0),
      scrollDirection: Axis.horizontal,
      children: places.map((place){
        return CardImageWithFabIcon(
          pathImage: place.urlImage,
          iconData: place.liked ? Icons.favorite : Icons.favorite_outline,
          onPressedFabIcon: (){ setLiked(place); },
        );
      }).toList()
    );
  }
}
