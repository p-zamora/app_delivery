// ignore_for_file: unnecessary_new, library_private_types_in_public_api, use_key_in_widget_constructors, import_of_legacy_library_into_null_safe, prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, must_be_immutable


import 'package:app_delivery/src/features/presentation/commons_widgets/BackButtons/back_button_widget.dart';
import 'package:app_delivery/src/features/presentation/commons_widgets/Headers/header_text_widget.dart';
import 'package:app_delivery/src/features/presentation/profile_detail_page/View/components/avatar_view.dart';
import 'package:app_delivery/src/theme/pallete.dart';
import 'package:app_delivery/src/utils/extensions/scree_size.dart';
import 'package:app_delivery/src/utils/styles/box_decoration_shadow_style.dart';
import 'package:flutter/material.dart';


import 'components/text_field_view.dart';

class ProfileDetailPage extends StatefulWidget {
  @override
  _ProfileDetailPageState createState() => _ProfileDetailPageState();
}

class _ProfileDetailPageState extends State<ProfileDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(builder: (BuildContext context) {
          return backButton(context, Colors.black);
        }),
        centerTitle: true,
        title: headerText(texto: 'Edit Profile', fontSize: 17.0),
        backgroundColor: white,
        elevation: 0.4,
        actions: [
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              padding: EdgeInsets.only(top: 20.0, right: 15.0),
              child: headerText(
                  texto: 'Done',
                  color: orange,
                  fontWeight: FontWeight.w500,
                  fontSize: 17.0),
            ),
          )
        ],
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              margin: EdgeInsets.only(
                  top: getScreenHeight(
                      context: context, multiplier: 0.1),
                  left: 15.0,
                  right: 15.0),
              decoration: createBoxDecorationShadow(),
              width: getScreenWidth(context: context),
              height: getScreenHeight(
                  context: context, multiplier: 0.85),
              child: Column(
                children: [
                  Transform.translate(
                    offset: Offset(0, -60),
                    child: AvatarView(
                        backgroundImage:
                            "https://images.unsplash.com/photo-1466112928291-0903b80a9466?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1053&q=80"),
                  ),
                  TextFieldProfielDetailView()
                ],
              ),
            ),
            SizedBox(height: 20.0)
          ]))
        ],
      ),
    );
  }
}
