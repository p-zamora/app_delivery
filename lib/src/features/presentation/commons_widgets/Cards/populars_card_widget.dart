// ignore_for_file: unnecessary_new, library_private_types_in_public_api, use_key_in_widget_constructors, import_of_legacy_library_into_null_safe, prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
//Widgets
import '../Headers/header_text_widget.dart';
//Colors
import 'package:app_delivery/src/theme/pallete.dart';

Widget popularsCard({
  required BuildContext context,
  double marginTop = 0.0,
  double marginBottom = 0.0,
  double marginLeft = 10.0,
  double marginRight = 0.0,
  ImageProvider<Object>? image,
  String title = '',
  String subtitle = '',
  String review = '',
  String ratings = '',
  String buttonText = '',
  bool hasActionButton = false,
}) {
  return Column(
    children: [
      Container(
        margin: EdgeInsets.only(
            top: marginTop,
            bottom: marginBottom,
            left: marginLeft,
            right: marginRight),
        padding: EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image(
                width: 70.0,
                height: 70.0,
                image: image ?? AssetImage('assets/default.png'),
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 7.0),
                      child: headerText(texto: title, fontSize: 17.0)),
                  Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(bottom: 5.0),
                      child: Text(subtitle,
                          style: TextStyle(
                              color: gris,
                              fontWeight: FontWeight.bold,
                              fontSize: 13.0))),
                  Row(
                    children: [
                      Icon(Icons.star, color: amarillo, size: 16.0),
                      Text(review,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 13.0)),
                      Container(
                          margin: EdgeInsets.only(left: 10.0),
                          child: Text(ratings,
                              style: TextStyle(
                                  color: gris,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13.0))),
                      Container(
                        margin: EdgeInsets.only(left: 25.0),
                        width: 80.0,
                        height: 20.0,
                        child: hasActionButton
                            ? ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  shape: StadiumBorder(),
                                  elevation: 0.5,
                                  primary: orange
                                ),                                
                                child: Text(
                                  buttonText,
                                  style: TextStyle(
                                      fontSize: 11.0, color: white),
                                ),
                              )
                            : Text(''),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ],
  );
}
