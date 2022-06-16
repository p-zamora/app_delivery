// ignore_for_file: unnecessary_new, library_private_types_in_public_api, use_key_in_widget_constructors, import_of_legacy_library_into_null_safe, prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, must_be_immutable

import 'package:flutter/material.dart';
//Colors
import 'package:app_delivery/src/theme/pallete.dart';
//Widgets
import 'package:app_delivery/src/features/presentation/commons_widgets/Headers/header_text_widget.dart';

class ListTileFilter extends StatefulWidget {
  String texto = '';
  bool isActive = false;
  void Function() func;

  ListTileFilter(
      {required this.texto, required this.isActive, required this.func});

  @override
  _ListTileFilterState createState() => _ListTileFilterState();
}

class _ListTileFilterState extends State<ListTileFilter> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        listTiles(
            texto: widget.texto, isActive: widget.isActive, func: widget.func),
      ],
    );
  }

  Widget listTiles({required String texto,required bool isActive,required void Function() func}) {
    return Container(
      decoration:
          BoxDecoration(border: Border(bottom: BorderSide(color: dividerLine))),
      child: ListTile(
        onTap: func,
        title: headerText(
            texto: texto,
            color: isActive ? orange : Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: 17.0),
        trailing: isActive
            ? Icon(Icons.check, color: isActive ? orange : Colors.black)
            : Text(''),
      ),
    );
  }
}
