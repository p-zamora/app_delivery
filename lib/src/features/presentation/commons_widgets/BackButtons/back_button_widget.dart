import 'package:flutter/material.dart';

Widget backButton(BuildContext context, Color color){
  return IconButton(
    icon: Icon(
      Icons.arrow_back
    ), 
    color: color,
    iconSize: 28.0,
    onPressed: () {
      Navigator.pop(context);
    }
  );
}