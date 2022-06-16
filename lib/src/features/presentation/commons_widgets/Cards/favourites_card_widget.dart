// ignore_for_file: unnecessary_new, library_private_types_in_public_api, use_key_in_widget_constructors, import_of_legacy_library_into_null_safe, prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables


import 'package:app_delivery/src/features/presentation/commons_widgets/Headers/header_text_widget.dart';
import 'package:app_delivery/src/theme/pallete.dart';
import 'package:app_delivery/src/utils/styles/box_decoration_shadow_style.dart';
import 'package:flutter/material.dart';

Widget favouritesCard(
    {required BuildContext context,
    double marginTop = 15.0,
    double marginBottom = 0.0,
    double marginLeft = 0.0,
    double marginRight = 0.0,
    ImageProvider<Object>? image,
    String title = '',
    String subtitle = '',
    String review = '',
    String ratings = '',
    String buttonText = '',
    bool hasActionButton = false,
    bool isFavourite = true}) {
  return Container(
    margin: EdgeInsets.only(
        top: marginTop,
        bottom: marginBottom,
        left: marginLeft,
        right: marginRight),
    padding: EdgeInsets.only(left: 20.0, top: 20.0, bottom: 20.0),
    width: double.infinity,
    decoration:createBoxDecorationShadow(),
    child: Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image(
            width: 70.0,
            height: 70.0,
            fit: BoxFit.cover,
            image: image ?? AssetImage('assets/defaults.png'),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 7.0),
                    child: headerText(
                        texto: title,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0),
                  ),
                  SizedBox(width: 20.0),
                  IconButton(
                    icon: Icon(Icons.bookmark,
                        size: 35.0,
                        color: isFavourite ? rosa : Colors.grey[300]),
                    onPressed: () {},
                  ),
                ],
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(bottom: 5.0),
                  child: headerText(
                      texto: subtitle,
                      color: gris,
                      fontWeight: FontWeight.w500,
                      fontSize: 13.0)),
              Row(
                children: [
                  Icon(Icons.star, color: amarillo, size: 16.0),
                  headerText(
                      texto: review,
                      fontWeight: FontWeight.w500,
                      fontSize: 13.0),
                  headerText(
                      texto: ratings,
                      color: gris,
                      fontWeight: FontWeight.w500,
                      fontSize: 13.0),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    width: 80.0,
                    height: 25.0,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0.5,
                        shape: StadiumBorder(),
                        primary: orange,   
                        textStyle: TextStyle(
                          color: white
                        )                                                                     
                      ),                      
                      child: headerText(
                          texto: buttonText,
                          color: white,
                          fontSize: 11.0),
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    ),
  );
}
