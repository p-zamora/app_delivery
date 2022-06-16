// ignore_for_file: unnecessary_new, library_private_types_in_public_api, use_key_in_widget_constructors, import_of_legacy_library_into_null_safe, prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, must_be_immutable

import 'package:flutter/material.dart';
//Colors
import 'package:app_delivery/src/theme/pallete.dart';
//Common Widgets
import 'package:app_delivery/src/features/presentation/commons_widgets/BackButtons/back_button_widget.dart';
import 'package:app_delivery/src/features/presentation/commons_widgets/Headers/header_text_widget.dart';
import 'package:app_delivery/src/features/presentation/commons_widgets/Cards/favourites_card_widget.dart';

class CollectionDetailPage extends StatefulWidget {
  @override
  _CollectionDetailPageState createState() => _CollectionDetailPageState();
}

class _CollectionDetailPageState extends State<CollectionDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            floating: false,
            pinned: true,
            snap: false,
            toolbarHeight: 50,
            backgroundColor: orange,
            expandedHeight: 230.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Image(
                    width: double.infinity,
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1499028344343-cd173ffc68a9?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80"),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(0, 0, 0, 1.3),
                        borderRadius: BorderRadius.circular(10.0)),
                    width: double.infinity,
                    height: double.infinity,
                  ),
                  Center(
                      child: headerText(
                          texto: 'Asia \n Restaurant',
                          color: white,
                          fontWeight: FontWeight.w500,
                          fontSize: 35.0,
                          textAlign: TextAlign.center))
                ],
              ),
            ),
            leading: Builder(
              builder: (BuildContext context) {
                return backButton(context, white);
              },
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 20.0),
                        alignment: Alignment.centerLeft,
                        child: headerText(
                            texto: "128 places",
                            color: Color.fromRGBO(51, 58, 77, 1.0),
                            fontWeight: FontWeight.w600,
                            fontSize: 18.0)),
                    Column(
                      children: [
                        favouritesCard(
                            context: context,
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1484980972926-edee96e0960d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80"),
                            title: "Andy & Cindy's Diner",
                            subtitle: "87 Botsford Circle Apt",
                            review: "4.8",
                            ratings: "(233 ratings)",
                            buttonText: "Delivery",
                            hasActionButton: true,
                            isFavourite: true),
                        favouritesCard(
                            context: context,
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1484980972926-edee96e0960d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80"),
                            title: "Andy & Cindy's Diner",
                            subtitle: "87 Botsford Circle Apt",
                            review: "4.8",
                            ratings: "(233 ratings)",
                            buttonText: "Delivery",
                            hasActionButton: true,
                            isFavourite: false),
                        favouritesCard(
                            context: context,
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1484980972926-edee96e0960d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80"),
                            title: "Andy & Cindy's Diner",
                            subtitle: "87 Botsford Circle Apt",
                            review: "4.8",
                            ratings: "(233 ratings)",
                            buttonText: "Delivery",
                            hasActionButton: true,
                            isFavourite: false),
                        favouritesCard(
                            context: context,
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1484980972926-edee96e0960d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80"),
                            title: "Andy & Cindy's Diner",
                            subtitle: "87 Botsford Circle Apt",
                            review: "4.8",
                            ratings: "(233 ratings)",
                            buttonText: "Delivery",
                            hasActionButton: true,
                            isFavourite: false),
                        favouritesCard(
                            context: context,
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1484980972926-edee96e0960d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80"),
                            title: "Andy & Cindy's Diner",
                            subtitle: "87 Botsford Circle Apt",
                            review: "4.8",
                            ratings: "(233 ratings)",
                            buttonText: "Delivery",
                            hasActionButton: true,
                            isFavourite: false),
                      ],
                    )
                  ],
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}
