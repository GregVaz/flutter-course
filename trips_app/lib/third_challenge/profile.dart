import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  String profilePath = "assets/img/beach.jpg";
  String profileName = "Amanda Murphy";
  String profileDetails = "04 years";
  bool emailStatus = false;

  Profile(this.profilePath, this.profileName, this.profileDetails, this.emailStatus);

  @override
  Widget build(BuildContext context) {
    final profileImage = Container(
      margin: const EdgeInsets.only(left: 15.0, top: 15.0, right: 15.0),
      width: 64.0,
      height: 64.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(profilePath),
        )
      ),
    );

    final profileBody = Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10.0, top: 10.0),
            child: Text(
              profileName,
              style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          Text(
            "Experience: $profileDetails",
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w400,
              color: Colors.grey
            ),
          )
        ],
      ),
    );

    final emailCloseButton = Container(
      margin: EdgeInsets.only(right: 15.0),
      width: 48.0,
      height: 48.0,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.redAccent,
      ),
      child: IconButton(
        icon: const Icon(Icons.email),
        color: Colors.white,
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("El mensaje se enviará proximamente!"))
          );
        },
      ),
    );

    final emailOpenButton = Container(
      margin: EdgeInsets.only(right: 15.0),
      width: 48.0,
      height: 48.0,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black12,
      ),
      child: IconButton(
        icon: const Icon(Icons.drafts),
        color: Colors.grey,
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("El mensaje ya ha sido enviado!"))
          );
        },
      ),
    );

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        profileImage,
        Expanded(
          child: profileBody,
        ),
        emailStatus ? emailOpenButton : emailCloseButton
      ],
    );
  }

}