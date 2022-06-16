import 'package:flutter/material.dart';
//Header Text
import '../Headers/header_text_widget.dart';
//Colors
import 'package:app_delivery/src/theme/pallete.dart';

Future showAlertDialog(BuildContext context, ImageProvider<Object> imagePath,
    String headerTitle, String headerSubtitle, Widget doneButton) async {
  await showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          content: Container(
            height: 360.0,
            child: Column(
              children: [
                Image(
                  image: imagePath, //AssetImage('assets/lock.png'),
                  height: 130.0,
                  width: 130.0,
                ),
                Container(
                    margin: EdgeInsets.all(15.0),
                    child: headerText(
                        texto: headerTitle,
                        color: primaryColor,
                        fontSize: 20.0)),
                Container(
                  margin: EdgeInsets.all(15.0),
                  child: Text(
                    headerSubtitle,
                    //"You'll shortly recieve an email with a code to setup a new password.",
                    style: TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 15.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                doneButton,
              ],
            ),
          ),
        );
      });
}
