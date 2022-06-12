import 'dart:io';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:trips_app/Place/ui/widgets/cart_image_with_fab_icon.dart';
import 'package:trips_app/Place/ui/widgets/text_input.dart';
import 'package:trips_app/User/bloc/bloc_user.dart';
import 'package:trips_app/widgets/button.dart';
import 'package:trips_app/widgets/gradient_background.dart';
import 'package:trips_app/widgets/title_header.dart';
import '../../model/place.dart';
import '../widgets/title_input_location.dart';

class AddPlaceScreen extends StatefulWidget {
  File image;

  AddPlaceScreen({ required this.image });

  @override
  State<StatefulWidget> createState() {
    return _AddPlaceScreen();
  }
}

class _AddPlaceScreen extends State<AddPlaceScreen> {
  @override
  Widget build(BuildContext context) {
    final _controllerTitlePLace = TextEditingController();
    final _controllerDescriptionPlace = TextEditingController();
    final _controllerLocationPlace = TextEditingController();

    UserBloc userBloc = BlocProvider.of<UserBloc>(context);

    return Scaffold(
      body: Stack(
        children: [
          GradientBackground(height: 300),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(top: 25.0, left: 5.0),
                child: SizedBox(
                  height: 40.0,
                  width: 45.0,
                  child: IconButton(
                    icon: Icon(Icons.keyboard_arrow_left, color: Colors.white, size: 45.0),
                    onPressed: () => {
                      Navigator.pop(context)
                    },
                  ),
                )
              ),
              Flexible(
                child: Container(
                   padding: EdgeInsets.only(top: 45.0, left: 20.0, right: 10.0),
                   child: TitleHeader(title: "Add a new Place")
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
            child: ListView(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: CardImageWithFabIcon(
                    pathImage: widget.image.path,
                    resourceFromCamera: true,
                    iconData: Icons.camera_alt_outlined,
                    onPressedFabIcon: () {
                      print("onPressedFabIcon");
                    },
                    height: 250.0,
                    width: 350.0,
                    left: 0,
                  ),
                ), // Foto
                Container(
                  margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
                  child: TextInput(
                      hintText: "Title",
                      inputType: TextInputType.text,
                      controller: _controllerTitlePLace
                  ),
                ),
                TextInput(
                  hintText: "Description",
                  inputType: TextInputType.multiline,
                  controller: _controllerDescriptionPlace,
                  maxLines: 6,
                ),
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: TextInputLocation(
                      hintText: "Location",
                      controller: _controllerLocationPlace,
                      iconData: Icons.location_on
                  ),
                ),
                Container(
                  width: 70.0,
                  child: Button(
                    buttonText: "Add Place",
                    onPressed: () {
                      // firestorage
                      // obtenemos la url de la imagen
                      // guardamos la info en cloud firestore
                        // Place object - title, description, url, userOwner, likes
                      userBloc.updatePlaceData(Place(
                        name: _controllerTitlePLace.value.text,
                        description: _controllerDescriptionPlace.value.text,
                        likes: 0,
                        urlImage: ''
                      )).whenComplete(() {
                        print("Termino");
                        Navigator.pop(context);
                      });
                    },
                  )
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  
}