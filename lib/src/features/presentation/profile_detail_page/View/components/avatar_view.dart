// ignore_for_file: unnecessary_new, library_private_types_in_public_api, use_key_in_widget_constructors, import_of_legacy_library_into_null_safe, prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, must_be_immutable, prefer_const_constructors_in_immutables

import 'package:app_delivery/src/theme/pallete.dart';
import 'package:app_delivery/src/utils/styles/box_decoration_shadow_style.dart';
import 'package:flutter/material.dart';

class AvatarView extends StatelessWidget {
  final String backgroundImage;

  AvatarView({required this.backgroundImage});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          width: 142.0,
          height: 142.0,
          decoration: createBoxDecorationShadow(
            borderRadius: BorderRadius.circular(65.0),
          ),
          child: CircleAvatar(backgroundImage: NetworkImage(backgroundImage)),
        ),
        Transform.translate(
          offset: Offset(0, -35),
          child: Container(
            width: 40.0,
            height: 40.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: rosa,
            ),
            child: Icon(Icons.camera_alt, color: white, size: 20.0),
          ),
        )
      ],
    );
  }
}
