// ignore_for_file: unnecessary_new, library_private_types_in_public_api, use_key_in_widget_constructors, import_of_legacy_library_into_null_safe, prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:app_delivery/src/theme/pallete.dart';
import 'package:flutter/material.dart';

class CuisinesFilter extends StatefulWidget {

  @override
  _CuisinesFilterState createState() => _CuisinesFilterState();
}

class _CuisinesFilterState extends State<CuisinesFilter> {
  bool btnAmerican = false;
  bool btnAsia = false;
  bool btnSushi = false;
  bool btnPizza = false;
  bool btnDesserts = false;
  bool btnFastFood = false;
  bool btnVIetnamese = false;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _roundedButtonFilter(() {
              setState(() => btnAmerican = !btnAmerican);
            }, btnAmerican, "American"),
            _roundedButtonFilter(() {
              setState(() => btnAsia = !btnAsia);
            }, btnAsia, "Asia"),
             _roundedButtonFilter(() {
              setState(() => btnSushi = !btnSushi);
            }, btnSushi, "Sushi"),
             _roundedButtonFilter(() {
              setState(() => btnPizza = !btnPizza);
            }, btnPizza, "Pizza"),            
          ],
        ),
        Row(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
             _roundedButtonFilter(() {
              setState(() => btnDesserts = !btnDesserts);
            }, btnDesserts, "Desserts"),
             _roundedButtonFilter(() {
              setState(() => btnFastFood = !btnFastFood);
            }, btnFastFood, "Fast Food"),
             _roundedButtonFilter(() {
              setState(() => btnVIetnamese = !btnVIetnamese);
            }, btnVIetnamese, "Vietnamese"),
          ],
        )
      ],
    );
  }

  Widget _roundedButtonFilter(void Function() func, bool isActive, String labelText){
    return ElevatedButton(
      onPressed: func,
      style: ElevatedButton.styleFrom(
        elevation: 0.5,
        primary: white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
          side: BorderSide(
            color: isActive ? orange : gris
          )
        )
      ),
      child: Text(labelText, style: TextStyle(
        color: isActive ? orange : gris,
      )),
    );
  }

}