// ignore_for_file: unnecessary_new, library_private_types_in_public_api, use_key_in_widget_constructors, import_of_legacy_library_into_null_safe, prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers
import 'package:flutter/material.dart';

Widget headerText({
  String texto = "", 
  Color color = Colors.black, 
  FontWeight fontWeight = FontWeight.bold, 
  double? fontSize,
  TextAlign textAlign = TextAlign.start,
  }) {
  return Text(
    texto,
    textAlign: textAlign,
    style: TextStyle(color: color, fontWeight: fontWeight, fontSize: fontSize),
  );
}
