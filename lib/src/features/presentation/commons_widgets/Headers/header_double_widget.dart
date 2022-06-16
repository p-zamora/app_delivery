// ignore_for_file: unnecessary_new, library_private_types_in_public_api, use_key_in_widget_constructors, import_of_legacy_library_into_null_safe, prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
//Widget
import 'package:app_delivery/src/features/presentation/commons_widgets/Headers/header_text_widget.dart';
//Colors
import 'package:app_delivery/src/theme/pallete.dart';

Widget headerDoubleText(
    {String textHeader = "", String textAction = "", void Function()? func}) {
  return Container(
    child: Row(
      children: [
        headerText(texto: textHeader, fontSize: 20.0),
        Spacer(),
        GestureDetector(
            onTap: func,
            child: headerText(
                texto: textAction,
                color: orange,
                fontWeight: FontWeight.w500,
                fontSize: 15.0)),
      ],
    ),
  );
}
