// ignore_for_file: unnecessary_new, library_private_types_in_public_api, use_key_in_widget_constructors, import_of_legacy_library_into_null_safe, prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, must_be_immutable

import 'package:app_delivery/src/features/presentation/commons_widgets/BackButtons/back_button_widget.dart';
import 'package:app_delivery/src/features/presentation/commons_widgets/Headers/header_double_widget.dart';
import 'package:app_delivery/src/features/presentation/commons_widgets/Headers/header_text_widget.dart';
import 'package:app_delivery/src/theme/pallete.dart';
import 'package:flutter/material.dart';

class PlaceDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        backgroundColor: orange,
        label: headerText(
            texto: "Añade a la Cesta S/95.40",
            color: white,
            fontWeight: FontWeight.w600,
            fontSize: 17.0),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 400.0,
            floating: false,
            pinned: true,
            snap: false,
            toolbarHeight: 50,
            backgroundColor: orange,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Image(
                    width: double.infinity,
                    height: 350.0,
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1493770348161-369560ae357d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80"),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 0, 0, 1.5),
                    ),
                    width: double.infinity,
                    height: 350.0,
                  ),
                  Wrap(
                    children: [
                      _promoButton(),
                      _infoPlace(),
                      _infoPlaceStatus(),
                      _offerBanner(),
                    ],
                  )
                ],
              ),
            ),
            leading: Builder(
              builder: (BuildContext context) {
                return backButton(context, white);
              },
            ),
            actions: [
              Container(
                margin: EdgeInsets.all(10.0),
                child: Image(
                  width: 24.0,
                  height: 24.0,
                  image: AssetImage('assets/share.png'),
                ),
              ),
              IconButton(
                  icon: Icon(Icons.bookmark_border,
                      color: white, size: 30.0),
                  onPressed: null)
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              _headers(texto: 'Populars'),
              _sliderCards(),
              _headers(texto: 'Full menu'),
              _menuList(context),
              _headers(texto: 'Reviews'),
              _reviews(),
              _headers(texto: 'Your Rating'),
              _yourRating(),
              SizedBox(height: 120.0)
            ]),
          )
        ],
      ),
    );
  }

  Widget _promoButton() {
    return Container(
      margin: EdgeInsets.only(top: 121.0, left: 30.0, right: 15.0),
      width: double.infinity,
      height: 23.0,
      child: Row(
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              elevation: 0.5,
              shape: StadiumBorder(),
              primary: orange
            ),
            child: headerText(
                texto: "Free Delivery", color: white, fontSize: 12.0),
          )
        ],
      ),
    );
  }

  Widget _infoPlace() {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          margin: EdgeInsets.symmetric(vertical: 7.0),
          child: headerText(
              texto: "Boon Lay Ho Huat Fried Praw Noodle",
              color: white,
              fontWeight: FontWeight.bold,
              fontSize: 30.0),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          margin: EdgeInsets.symmetric(vertical: 7.0),
          child: Row(
            children: [
              Icon(Icons.location_on, color: gris),
              headerText(
                  texto: "03 Jameson Manors Apt. 177",
                  color: white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0),
            ],
          ),
        )
      ],
    );
  }

  Widget _infoPlaceStatus() {
    return Container(
      margin: EdgeInsets.only(top: 15.0),
      padding: EdgeInsets.symmetric(horizontal: 40.0),
      height: 70.0,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: white,
          ),
          bottom: BorderSide(color: white),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.star, color: white),
                  headerText(
                      texto: "4.5",
                      color: white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0)
                ],
              ),
              headerText(
                  texto: "351 Ratings",
                  color: gris,
                  fontWeight: FontWeight.w500,
                  fontSize: 15.0)
            ],
          ),
          Container(
            height: 40.0,
            decoration: BoxDecoration(
                border: Border(right: BorderSide(color: white))),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.bookmark, color: white),
                  headerText(
                      texto: "137k",
                      color: white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0)
                ],
              ),
              headerText(
                  texto: "Favourites",
                  color: gris,
                  fontWeight: FontWeight.w500,
                  fontSize: 15.0)
            ],
          ),
          Container(
            height: 40.0,
            decoration: BoxDecoration(
                border: Border(right: BorderSide(color: white))),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.photo, color: white),
                  headerText(
                      texto: "346",
                      color: white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0)
                ],
              ),
              headerText(
                  texto: "Photo",
                  color: gris,
                  fontWeight: FontWeight.w500,
                  fontSize: 15.0)
            ],
          )
        ],
      ),
    );
  }

  Widget _offerBanner() {
    return Container(
      color: Color.fromRGBO(255, 237, 214, 1.0),
      padding: EdgeInsets.all(10.0),
      height: 80.0,
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              headerText(
                  texto: 'New! Try Pickup',
                  color: orange,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0),
              headerText(
                  texto:
                      'Pickup on your time. Your order is \n ready when you are.',
                  color: primaryColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 13.0),
            ],
          ),
          Spacer(),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),                
              ),
              primary: orange
            ),          
            child: headerText(
                texto: 'Order Now',
                color: white,
                fontWeight: FontWeight.bold,
                fontSize: 13.0),
          )
        ],
      ),
    );
  }

  Widget _headers({ required String texto}) {
    return Container(
      margin: EdgeInsets.only(top: 20.0, bottom: 5.0),
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: headerDoubleText(textHeader: texto, textAction: ''),
    );
  }

  Widget _sliderCards() {
    return Container(
      height: 210.0,
      padding: EdgeInsets.only(left: 10.0),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return _card();
          }),
    );
  }

  Widget _card() {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image(
              width: 200.0,
              height: 100.0,
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1476224203421-9ac39bcb3327?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80"),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            child: headerText(
                texto: "Peanut Chaat with Dahi",
                fontWeight: FontWeight.bold,
                fontSize: 15.0),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: headerText(
                texto: "S/. 9.50",
                color: gris,
                fontWeight: FontWeight.w500,
                fontSize: 14.0),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 5.0),
                child: headerText(
                    texto: "Selecciona",
                    color: orange,
                    fontWeight: FontWeight.w500,
                    fontSize: 15.0),
              ),
              Container(
                  margin: EdgeInsets.only(top: 5.0, left: 90.0),
                  child: Image(
                    width: 20.0,
                    height: 20.0,
                    fit: BoxFit.cover,
                    image: AssetImage("assets/plus_order.png"),
                  )),
            ],
          )
        ],
      ),
    );
  }

  Widget _menuList(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10.0),
      child: Column(
        children: [
          _menuItem(
            context,
            "Salads",
            "2",
          ),
          _menuItem(
            context,
            "Chicken",
            "5",
          ),
          _menuItem(
            context,
            "Soups",
            "6",
          ),
          _menuItem(
            context,
            "Vegetables",
            "7",
          )
        ],
      ),
    );
  }

  Widget _menuItem(BuildContext context, String texto, String itemCount) {
    return Container(
      decoration:
          BoxDecoration(border: Border(bottom: BorderSide(color: gris))),
      child: Column(
        children: [
          ListTile(
            title: headerText(
                texto: texto, fontWeight: FontWeight.w400, fontSize: 17.0),
            trailing: headerText(
                texto: itemCount, fontWeight: FontWeight.w400, fontSize: 17.0),
          ),
          _sliderCards()
        ],
      ),
    );
  }

  Widget _reviews() {
    return Container(
        height: 150.0,
        margin: EdgeInsets.only(left: 10.0),
        padding: EdgeInsets.only(left: 10.0),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return _cardsReviews();
            }));
  }

  Widget _cardsReviews() {
    var lorem =
        "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto sssss.";

    return Container(
      margin: EdgeInsets.only(top: 10.0),
      padding: EdgeInsets.only(top: 10.0, right: 10.0),
      width: 350.0,
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image(
                  width: 49.0,
                  height: 43.0,
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1525357816819-392d2380d821?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=967&q=80"),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    headerText(
                        texto: "Mike Smithson",
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0),
                    headerText(
                        texto: "45 Reviews",
                        fontWeight: FontWeight.w500,
                        fontSize: 14.0,
                        color: gris)
                  ],
                ),
              ),
              Spacer(),
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Container(
                    color: orange,
                    width: 60.0,
                    height: 30.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        headerText(
                            texto: "4",
                            color: white,
                            fontWeight: FontWeight.w400,
                            fontSize: 12.0),
                        Icon(Icons.star, color: white, size: 14.0)
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          Container(
              margin: EdgeInsets.only(top: 10.0),
              child: headerText(
                  texto: lorem,
                  color: gris,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                  textAlign: TextAlign.left)),
          Container(
              margin: EdgeInsets.only(top: 10.0),
              child: headerText(
                  texto: "See full review",
                  color: orange,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500))
        ],
      ),
    );
  }

  Widget _yourRating() {
    var lorem =
        "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto sssss.";

    return Container(
      margin: EdgeInsets.only(top: 10.0),
      padding: EdgeInsets.only(left: 10.0, right: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Container(
                  color: orangeWithHalfOpacity,
                  width: 60.0,
                  height: 30.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      headerText(
                          texto: "1",
                          color: white,
                          fontWeight: FontWeight.w400,
                          fontSize: 12.0),
                      Icon(Icons.star, color: white, size: 14.0)
                    ],
                  ),
                ),
              )),
              Container(
                  child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Container(
                  color: orangeWithHalfOpacity,
                  width: 60.0,
                  height: 30.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      headerText(
                          texto: "2",
                          color: white,
                          fontWeight: FontWeight.w400,
                          fontSize: 12.0),
                      Icon(Icons.star, color: white, size: 14.0)
                    ],
                  ),
                ),
              )),
              Container(
                  child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Container(
                  color: orangeWithHalfOpacity,
                  width: 60.0,
                  height: 30.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      headerText(
                          texto: "3",
                          color: white,
                          fontWeight: FontWeight.w400,
                          fontSize: 12.0),
                      Icon(Icons.star, color: white, size: 14.0)
                    ],
                  ),
                ),
              )),
              Container(
                  child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Container(
                  color: orange,
                  width: 60.0,
                  height: 30.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      headerText(
                          texto: "4",
                          color: white,
                          fontWeight: FontWeight.w400,
                          fontSize: 12.0),
                      Icon(Icons.star, color: white, size: 14.0)
                    ],
                  ),
                ),
              )),
              Container(
                  child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Container(
                  color: orangeWithHalfOpacity,
                  width: 60.0,
                  height: 30.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      headerText(
                          texto: "5",
                          color: white,
                          fontWeight: FontWeight.w400,
                          fontSize: 12.0),
                      Icon(Icons.star, color: white, size: 14.0)
                    ],
                  ),
                ),
              )),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0, left: 20.0),
            child: headerText(
                texto: lorem,
                color: gris,
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                textAlign: TextAlign.left),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0, left: 20.0),
            child: headerText(
                texto: "+ Edit your review",
                color: orange,
                fontSize: 15.0,
                fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
