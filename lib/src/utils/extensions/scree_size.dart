// ignore_for_file: avoid_init_to_null, unnecessary_null_comparison

import 'package:flutter/material.dart';


  double getScreenWidth({ required BuildContext context, double? multiplier = null}) {
    var width = MediaQuery.of(context).size.width;

    if (multiplier != null) {
      width = width * multiplier;
    }

    return width;
  }

  double getScreenHeight({required BuildContext context, double? multiplier = null}) {
    var height = MediaQuery.of(context).size.height;

    if (multiplier != null) {
      height = height * multiplier;
    }

    return height;
  }
