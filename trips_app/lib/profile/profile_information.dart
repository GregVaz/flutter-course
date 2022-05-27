import 'package:flutter/material.dart';

class ProfileInformation extends StatelessWidget {
  String pathImage = 'assets/img/profile.jpg';
  String profileName = 'Greg Vaz';
  String profileMail = 'gregvaz@example.com';

  ProfileInformation(this.pathImage, this.profileName, this.profileMail);

  @override
  Widget build(BuildContext context) {
    final profileInfo = Container(
      margin: EdgeInsets.only(left: 20.0),
      height: 110.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            profileName,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
              fontFamily: 'Lato',
            ),
          ),
          Text(
            profileMail,
            style: TextStyle(
              color: Colors.white38,
              fontSize: 14.0,
              fontWeight: FontWeight.w300,
              fontFamily: 'Lato',
            ),
          ),
        ],
      ),
    );

    final photo = Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white, width: 2),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage),
        ),
      ),
    );

    return Container(
      margin: EdgeInsets.only(
        top: 70.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          photo,
          profileInfo,
        ],
      ),
    );
  }
}
