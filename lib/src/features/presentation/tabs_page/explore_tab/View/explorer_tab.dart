// ignore_for_file: unnecessary_new, library_private_types_in_public_api, use_key_in_widget_constructors, import_of_legacy_library_into_null_safe, prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, must_be_immutable, avoid_print, sized_box_for_whitespace

import 'package:app_delivery/src/features/presentation/commons_widgets/Headers/header_text_widget.dart';
import 'package:app_delivery/src/features/presentation/commons_widgets/Cards/populars_card_widget.dart';
import 'package:app_delivery/src/theme/pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

class ExplorerTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CustomScrollView(slivers: [
      SliverList(
          delegate: SliverChildListDelegate([
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              SizedBox(height: 20),
              _topBar(context),
              Container(
                  margin: EdgeInsets.symmetric(vertical: 16.0),
                  alignment: Alignment.centerLeft,
                  child:
                      headerText(texto: 'Discover new places', fontSize: 30.0)),
              _sliderCards(),
              _headers(context, "Popular this week", "Show all",
                  () => Navigator.pushNamed(context, 'collections')),
              popularsCard(
                context: context,
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1484980972926-edee96e0960d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80"),
                title: "Andy & Cindy's Diner",
                subtitle: "87 Botsford Circle Apt",
                review: "4.8",
                ratings: "(233 ratings)",
                buttonText: "Delivery",
                hasActionButton: true,
              ),
              popularsCard(
                context: context,
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1432139509613-5c4255815697?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=332&q=80"),
                title: "Andy & Cindy's Diner",
                subtitle: "87 Botsford Circle Apt",
                review: "4.8",
                ratings: "(233 ratings)",
                buttonText: "Delivery",
                hasActionButton: true,
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
                hasActionButton: true,
              ),
              SizedBox(height: 10.0),
              _headers(context, "Collections", "Show all",
                  () => Navigator.pushNamed(context, 'collections')),
              _sliderCollections(),
            ],
          ),
        )
      ]))
    ]));
  }
}

Widget _topBar(BuildContext context) {
  return Row(
    children: [
      GestureDetector(
        onTap: () => Navigator.pushNamed(context, "search"),
        child: Container(
          width: 260,
          padding: EdgeInsets.all(12.0),
          margin: EdgeInsets.only(left: 16.0),
          decoration: BoxDecoration(
              border: Border.all(color: Color.fromRGBO(234, 236, 239, 1.0)),
              borderRadius: BorderRadius.circular(20.0)),
          child: Row(
            children: [
              Icon(
                Icons.search,
                color: gris,
                size: 20.0,
              ),
              Container(
                margin: EdgeInsets.only(left: 5.0),
                child: Text(
                  'Search',
                  style: TextStyle(color: gris, fontSize: 17.0),
                ),
              ),
            ],
          ),
        ),
      ),
      Container(
        width: 45.0,
        height: 45.0,
        margin: EdgeInsets.only(left: 10.0),
        decoration: BoxDecoration(
            color: Color.fromRGBO(209, 209, 2014, 1.0),
            borderRadius: BorderRadius.circular(30.0)),
        child: IconButton(
          icon: Icon(
            Icons.filter_list,
            color: white,
            size: 30.0,
          ),
          onPressed: () {
            Navigator.pushNamed(context, "filter");
          },
        ),
      ),
    ],
  );
}

Widget _sliderCards() {
  return Container(
    height: 350.0,
    child: Swiper(
      itemCount: 4,
      layout: SwiperLayout.DEFAULT,
      itemBuilder: (BuildContext context, int i) {
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int i) {
            return _card(context);
          },
        );
      },
    ),
  );
}

Widget _card(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, 'place-detail');
    },
    child: Container(
      margin: EdgeInsets.all(5.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image(
              width: 210.00,
              height: 250.0,
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1482049016688-2d3e1b311543?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=353&q=80"),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10.0),
                child: Text(
                  "Andy & Cindy's Diner",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 17.0),
                  textAlign: TextAlign.start,
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "87 Botsford Circle Apt",
                  style: TextStyle(
                      color: gris, fontWeight: FontWeight.w500, fontSize: 13.0),
                  textAlign: TextAlign.start,
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: amarillo,
                    size: 16.0,
                  ),
                  Text(
                    "4.8",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 13.0),
                  ),
                  Text(
                    "(233 ratings)",
                    style: TextStyle(
                        color: gris,
                        fontWeight: FontWeight.w500,
                        fontSize: 13.0),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    width: 80.0,
                    height: 18.0,
                    child: RaisedButton(
                      elevation: 0.5,
                      shape: StadiumBorder(),
                      color: orange,
                      textColor: white,
                      onPressed: () {},
                      child: Text(
                        "Delivery",
                        style: TextStyle(fontSize: 11.0),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    ),
  );
}

Widget _headers(
    BuildContext context, String textHeader, String textAction,void Function() func) {
  return Row(
    children: [
      Container(
        margin: EdgeInsets.only(left: 8.0),
        alignment: Alignment.centerLeft,
        child: headerText(texto: textHeader, fontSize: 20.0),
      ),
      Spacer(),
      GestureDetector(
        onTap: func,
        child: Row(
          children: [
            Text(
              textAction,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 15.0),
            ),
            Icon(Icons.play_arrow)
          ],
        ),
      )
    ],
  );
}

Widget _sliderCollections() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 5.0),
    height: 180.0,
    child: Swiper(
      itemCount: 4,
      layout: SwiperLayout.DEFAULT,
      itemBuilder: (BuildContext context, int index) {
        return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return _cardCollection(context);
            });
      },
    ),
  );
}

Widget _cardCollection(BuildContext context) {
  return Container(
    margin: EdgeInsets.fromLTRB(0, 10.0, 20.0, 10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image(
            width: 300.0,
            height: 150.0,
            image: NetworkImage(
                "https://images.unsplash.com/photo-1564759077036-3def242e69c5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80"),
            fit: BoxFit.cover,
          ),
        ),
      ],
    ),
  );
}
