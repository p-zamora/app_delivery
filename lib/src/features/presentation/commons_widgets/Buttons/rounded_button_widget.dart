// ignore_for_file: unnecessary_new, library_private_types_in_public_api, use_key_in_widget_constructors, import_of_legacy_library_into_null_safe, prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:app_delivery/src/theme/pallete.dart';
import 'package:flutter/material.dart';

Widget roundedButton(
    {double width = 350.0,
    double height = 45.0,
    double top = 20.0,
    double radius = 20.0,
    bool isWithIcon = false,
    ImageProvider<Object>? icon,
    String labelButton='',
    double fontSize = 15.0,
    Color? color,
    required void Function() func}) {
  return Container(
    width: width,
    height: height,
    margin: EdgeInsets.only(top: top),
    child: isWithIcon
        ? _raisedButtonWithIcon(radius, icon, labelButton, fontSize, color = primaryColor, func)
        : _raisedButtonWithoutIcon(radius, labelButton, fontSize, color = primaryColor, func),
  );
}

Widget _raisedButtonWithIcon(double radius, ImageProvider<Object>? icon,
    String labelButton, double fontSize, Color color, void Function() func) {
  return ElevatedButton(
    onPressed: func,
    style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius))),
    child: Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: icon??AssetImage('assets/default.png'),
            width: 20.0,
            height: 20.0,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              labelButton,
              style: TextStyle(
                color: white,
                fontSize: fontSize,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget _raisedButtonWithoutIcon(double radius, String labelButton,
    double fontSize, Color color, void Function() func) {
  return ElevatedButton(
    onPressed: func,
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),      
      primary: color
    ),    
    child: Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              labelButton,
              style: TextStyle(
                color: white,
                fontSize: fontSize,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
