import 'package:flutter/material.dart';
import 'package:trips_app/User/bloc/bloc_user.dart';
import 'package:trips_app/User/model/user_model.dart';
import 'package:trips_app/trips_bar.dart';
import 'package:trips_app/widgets/gradient_background.dart';
import 'package:trips_app/widgets/button_green.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignIn extends StatefulWidget {
  @override
  State createState() {
    return _SignIn();
  }
}

class _SignIn extends State<SignIn> {
  late UserBloc userBloc;
  late double screenWidth;

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of<UserBloc>(context);
    screenWidth = MediaQuery.of(context).size.width;
    return _handleCurrentSession();
  }

  Widget _handleCurrentSession() {
    return StreamBuilder(
      stream: userBloc.streamFirebase,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (!snapshot.hasData || snapshot.hasError) {
          return signInGoogleUI();
        } else {
          return TripsBar();
        }
      },
    );
  }

  Widget signInGoogleUI() {
    return Scaffold(
      body: Stack(
        children: [
          GradientBackground(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                  child: Container(
                    width: screenWidth,
                    child: const Text(
                      "Welcome \n This is your Travel App",
                      style: TextStyle(
                        fontSize: 37.0,
                        fontFamily: 'Lato',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
              ),
              ButtonGreen(
                text: "Login with Gmail",
                onPressed: () {
                  userBloc.signIn().then((User? user) {
                    userBloc.updateUserData(UserModel(
                        uid: user?.uid ?? '',
                        name: user?.displayName ?? '',
                        email: user?.email ?? '',
                        photoURL: user?.photoURL ?? '',
                    ));
                  });
                },
                width: 300.0,
                height: 50.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
