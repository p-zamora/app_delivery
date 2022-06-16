// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, use_key_in_widget_constructors, avoid_unnecessary_containers

import 'package:app_delivery/src/utils/extensions/scree_size.dart';
import 'package:flutter/material.dart';

class TextFieldProfielDetailView extends StatefulWidget {
  @override
  _TextFieldProfielDetailViewState createState() =>
      _TextFieldProfielDetailViewState();
}

class _TextFieldProfielDetailViewState
    extends State<TextFieldProfielDetailView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          _createTextFieldUsername(context),
          _createTextFieldEmail(context),
          _createTextFieldPhone(context),
          _createTextFieldDateOfBirth(context),
          _createTextFieldDeliveryAddress(context),
        ],
      ),
    );
  }

  Widget _createTextFieldUsername(BuildContext context) {
    return Container(
      width: getScreenWidth(context: context, multiplier: 0.85),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(color: Theme.of(context).dividerColor))),
      child: ListTile(
        title: TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                hintText: 'Username',
                border: OutlineInputBorder(borderSide: BorderSide.none))),
      ),
    );
  }

  Widget _createTextFieldEmail(BuildContext context) {
    return Container(
      width: getScreenWidth(context: context, multiplier: 0.85),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(color: Theme.of(context).dividerColor))),
      child: ListTile(
        title: TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                hintText: 'Email',
                border: OutlineInputBorder(borderSide: BorderSide.none))),
      ),
    );
  }

  Widget _createTextFieldPhone(BuildContext context) {
    return Container(
      width: getScreenWidth(context: context, multiplier: 0.85),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(color: Theme.of(context).dividerColor))),
      child: ListTile(
        title: TextField(
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
                hintText: 'Phone',
                border: OutlineInputBorder(borderSide: BorderSide.none))),
      ),
    );
  }

  Widget _createTextFieldDateOfBirth(BuildContext context) {
    return Container(
      width: getScreenWidth(context: context, multiplier: 0.85),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(color: Theme.of(context).dividerColor))),
      child: ListTile(
        title: TextField(
            keyboardType: TextInputType.datetime,
            decoration: InputDecoration(
                hintText: 'Date of Birth',
                border: OutlineInputBorder(borderSide: BorderSide.none))),
      ),
    );
  }

  Widget _createTextFieldDeliveryAddress(BuildContext context) {
    return Container(
      width: getScreenWidth(context: context, multiplier: 0.85),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(color: Theme.of(context).dividerColor))),
      child: ListTile(
        title: TextField(
            maxLines: 3,
            keyboardType: TextInputType.streetAddress,
            decoration: InputDecoration(
                hintText: 'Delivery Address',
                border: OutlineInputBorder(borderSide: BorderSide.none))),
      ),
    );
  }

}
