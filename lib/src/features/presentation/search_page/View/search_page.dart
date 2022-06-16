// ignore_for_file: unnecessary_new, library_private_types_in_public_api, use_key_in_widget_constructors, import_of_legacy_library_into_null_safe, prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, must_be_immutable, avoid_print

import 'package:app_delivery/src/features/presentation/commons_widgets/Cards/populars_card_widget.dart';
import 'package:flutter/material.dart';
//Colors
import 'package:app_delivery/src/theme/pallete.dart';
//Widgets
import 'package:app_delivery/src/features/presentation/commons_widgets/Cards/vertical_card_widget.dart';
import 'package:app_delivery/src/features/presentation/commons_widgets/Headers/header_double_widget.dart';
import 'package:app_delivery/src/features/presentation/commons_widgets/Headers/header_text_widget.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: white,
            leading: IconButton(
              icon: Icon(Icons.close),
              color: Colors.black,
              iconSize: 40.0,
              onPressed: () => Navigator.pop(context),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 25.0),
                        alignment: Alignment.centerLeft,
                        child: headerText(texto: "Search", fontSize: 30.0)),
                    _searchInput(context),
                    SizedBox(height: 35.0),
                    headerDoubleText(
                        textHeader: "Recent search",
                        textAction: "Clear all",
                        func: () => print("Clear All")),
                    _sliderRecentSearch(),
                    SizedBox(height: 20.0),
                    headerDoubleText(
                        textHeader: "Recommend for you", textAction: ''),
                    SizedBox(height: 20.0),
                    popularsCard(
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1484980972926-edee96e0960d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80"),
                      title: "Andy & Cindy's Diner",
                      subtitle: "87 Botsford Circle Apt",
                      review: "4.8",
                      ratings: "(233 ratings)",
                      buttonText: "Delivery",
                      hasActionButton: false,
                      context: context,
                    ),
                    popularsCard(
                      context: context,
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1484980972926-edee96e0960d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80"),
                      title: "Andy & Cindy's Diner",
                      subtitle: "87 Botsford Circle Apt",
                      review: "4.8",
                      ratings: "(233 ratings)",
                      buttonText: "Delivery",
                      hasActionButton: false,
                    ),
                    popularsCard(
                      context: context,
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1484980972926-edee96e0960d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80"),
                      title: "Andy & Cindy's Diner",
                      subtitle: "87 Botsford Circle Apt",
                      review: "4.8",
                      ratings: "(233 ratings)",
                      buttonText: "Delivery",
                      hasActionButton: false,
                    ),
                    popularsCard(
                      context: context,
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1484980972926-edee96e0960d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80"),
                      title: "Andy & Cindy's Diner",
                      subtitle: "87 Botsford Circle Apt",
                      review: "4.8",
                      ratings: "(233 ratings)",
                      buttonText: "Delivery",
                      hasActionButton: false,
                    ),
                  ],
                ),
              )
            ]),
          )
        ],
      ),
    );
  }

  Widget _searchInput(BuildContext context) {
    return Container(
      height: 40.0,
      margin: EdgeInsets.only(top: 15.0),
      padding: EdgeInsets.only(left: 5.0),
      decoration: BoxDecoration(
          color: bgInputs, borderRadius: BorderRadius.circular(20.0)),
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.only(top: 5.0),
            prefixIcon: Icon(Icons.search, color: gris),
            hintText: "Search",
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    );
  }

  Widget _sliderRecentSearch() {
    return Container(
      margin: EdgeInsets.only(top: 5.0),
      height: 190.0,
      child: Swiper(
        itemCount: 4,
        layout: SwiperLayout.DEFAULT,
        itemBuilder: (BuildContext context, int index) {
          return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return cardVertical(
                  context: context,
                  width: 200.0,
                  height: 120.0,
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1584269974503-653d2d40c75c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1050&q=80"),
                  title: "Andy & Cindy's Diner",
                  subtitle: "87 Botsford Circle Apt");
            },
          );
        },
      ),
    );
  }
}
