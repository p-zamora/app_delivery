// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
//Colors
import 'package:app_delivery/src/theme/pallete.dart';
//Widgets
import 'package:app_delivery/src/features/presentation/commons_widgets/Buttons/rounded_button_widget.dart';
import 'package:app_delivery/src/features/presentation/commons_widgets/Headers/header_text_widget.dart';
import 'package:app_delivery/src/features/presentation/commons_widgets/BackButtons/back_button_widget.dart';
//Services
import 'package:flutter/services.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent,
    ));

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: white,
        leading: Builder(builder: (BuildContext context) {
          return backButton(context, Colors.black);
        }),
      ),
      body: ListView(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  headerText(texto: 'Create an account', color: primaryColor, fontSize: 35.0),
                  _userInput(),
                  _emailInput(),
                  _phoneInput(),
                  _dateInput(),
                  _passwordInput(),
                  roundedButton(
                      width: 470.0,
                      height: 45.0,
                      top: 40.0,
                      labelButton: "Sig up",
                      fontSize: 17.0,
                      color: orange,
                      func: () => Navigator.pushNamed(context, 'login')),
                  Container(
                    margin: EdgeInsets.all(30.0),
                    child: Text(
                      'By clicking Sign up you agree to the following Terms and Conditions without reservation.',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 15.0),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _userInput() {
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      padding: EdgeInsets.only(left: 20.0),
      decoration: BoxDecoration(
          color: Color.fromRGBO(142, 142, 147, 1.2),
          borderRadius: BorderRadius.circular(30.0)),
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(borderSide: BorderSide.none),
            hintText: 'Username'),
        keyboardType: TextInputType.name,
      ),
    );
  }

  Widget _emailInput() {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      padding: EdgeInsets.only(left: 20.0),
      decoration: BoxDecoration(
          color: Color.fromRGBO(142, 142, 147, 1.2),
          borderRadius: BorderRadius.circular(30.0)),
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(borderSide: BorderSide.none),
            hintText: 'Email'),
        keyboardType: TextInputType.emailAddress,
      ),
    );
  }

  Widget _phoneInput() {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      padding: EdgeInsets.only(left: 20.0),
      decoration: BoxDecoration(
          color: Color.fromRGBO(142, 142, 147, 1.2),
          borderRadius: BorderRadius.circular(30.0)),
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(borderSide: BorderSide.none),
            hintText: 'Phone'),
        keyboardType: TextInputType.emailAddress,
      ),
    );
  }

  Widget _dateInput() {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      padding: EdgeInsets.only(left: 20.0),
      decoration: BoxDecoration(
          color: Color.fromRGBO(142, 142, 147, 1.2),
          borderRadius: BorderRadius.circular(30.0)),
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(borderSide: BorderSide.none),
            hintText: 'Date of birth'),
        keyboardType: TextInputType.datetime,
      ),
    );
  }

  Widget _passwordInput() {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      padding: EdgeInsets.only(left: 20.0),
      decoration: BoxDecoration(
          color: Color.fromRGBO(142, 142, 147, 1.2),
          borderRadius: BorderRadius.circular(30.0)),
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(borderSide: BorderSide.none),
            hintText: 'Password'),
        keyboardType: TextInputType.visiblePassword,
      ),
    );
  }
}
