import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:trips_app/widgets/gradient_background.dart';
import 'package:trips_app/Place/ui/widgets/card_image_list.dart';

import 'package:trips_app/User/bloc/bloc_user.dart';

import 'package:trips_app/User/model/user_model.dart';

class Header extends StatelessWidget {
  late UserBloc userBloc;

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of<UserBloc>(context);

    return StreamBuilder(
        stream: userBloc.streamFirebase,
        builder: (context, AsyncSnapshot snapshot) {
          switch (snapshot.connectionState){
            case ConnectionState.waiting:
              return Center(child: CircularProgressIndicator(),);
            case ConnectionState.none:
              return Center(child: CircularProgressIndicator(),);
            case ConnectionState.active:
              return showPlacesData(snapshot);
            case ConnectionState.done:
              return showPlacesData(snapshot);
            default:
              return showPlacesData(snapshot);
          }
        }
    );
  }

  Widget showPlacesData(AsyncSnapshot snapshot){
    if(!snapshot.hasData || snapshot.hasError){
      return Stack(
        children: [
          GradientBackground(height: 250.0),
          Text("Usuario no logeado. Haz Login")
        ],
      );
    } else {
      UserModel user = UserModel(
          uid: snapshot.data.uid,
          name: snapshot.data.displayName,
          email: snapshot.data.email,
          photoURL: snapshot.data.photoURL
      );

      return Stack(
        children: [
          GradientBackground(height: 250.0),
          CardImageList(user: user)
        ],
      );
    }
  }
}
