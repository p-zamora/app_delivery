// ignore_for_file: unnecessary_new, prefer_const_constructors, library_private_types_in_public_api, use_key_in_widget_constructors, sized_box_for_whitespace

import 'package:app_delivery/src/theme/pallete.dart';
import 'package:flutter/material.dart';

class PriceFilter extends StatefulWidget {

  @override
  _PriceFilterState createState() => _PriceFilterState();
}

class _PriceFilterState extends State<PriceFilter> {

  //PROPERTIES
  RangeValues _values = new RangeValues(0.3, 1.0);
  int _minValue = 0;
  int _maxValue = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text('S/. $_minValue', style: TextStyle(fontSize: 16.0)),
        Container(
          width: 250,
          child: RangeSlider(
            activeColor: orange,
            inactiveColor: gris,
            values: _values,
            min: 0,
            max: 100.0,
            onChanged: (RangeValues newValues){
              setState(() {
                _values = newValues;
                _minValue = _values.start.round();
                _maxValue = _values.end.round();
              });
            },
          ),
        ),
        Text('S/. $_maxValue', style: TextStyle(fontSize: 16.0)),
      ],
    );
  }
}