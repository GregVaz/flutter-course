import 'dart:io';
import 'package:flutter/material.dart';
import 'package:trips_app/widgets/gradient_background.dart';
import 'package:trips_app/widgets/title_header.dart';

class AddPlaceScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AddPlaceScreen();
  }
}

class _AddPlaceScreen extends State<AddPlaceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GradientBackground(height: 300),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(top: 25.0, left: 5.0),
                child: SizedBox(
                  height: 45.0,
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
          )
        ],
      ),
    );
  }
  
}