import 'package:flutter/material.dart';
import 'package:tiny_chat/constants.dart';
import 'package:tiny_chat/components/rounded_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'chat_screen.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class RegistrationScreen extends StatefulWidget {
  static String id = 'registration_screen';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _auth = FirebaseAuth.instance;
  bool showSpinner = false;
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Flexible(
                child: Hero(
                  tag: kHeroLogoTag,
                  child: Container(
                    height: 160.0,
                    child: Image.asset(kLogoImageText),
                  ),
                ),
              ),
              SizedBox(
                height: 48.0,
              ),
              Theme(
                data: ThemeData(
                  primaryColor: kMainColor,
                ),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value) {
                    //Do something with the user input.
                    email = value;
                  },
                  decoration: kTextFieldDecoration.copyWith(
                    hintText: kEnterYourEmailText,
                    labelText: kEmailText,
                    prefixIcon: Icon(
                      Icons.email,
                      color: kMainColor,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Theme(
                data: ThemeData(
                  primaryColor: kMainColor,
                ),
                child: TextField(
                  obscureText: true,
                  onChanged: (value) {
                    //Do something with the user input.
                    password = value;
                  },
                  decoration: kTextFieldDecoration.copyWith(
                    hintText: kEnterYourPasswordText,
                    labelText: kPasswordText,
                    prefixIcon: Icon(
                      Icons.vpn_key,
                      color: kMainColor,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 24.0,
              ),
              RoundedButton(
                title: kRegisterText,
                colour: kMainSubColor,
                onPressed: () async {
                  setState(() {
                    showSpinner = true;
                  });
                  try {
                    final newUser = await _auth.createUserWithEmailAndPassword(
                        email: email, password: password);
                    if (newUser != null) {
                      Navigator.pushNamed(context, ChatScreen.id);
                    }

                    setState(() {
                      showSpinner = false;
                    });
                  } catch (e) {
                    print(e);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
