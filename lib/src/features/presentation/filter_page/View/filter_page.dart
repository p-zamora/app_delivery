// ignore_for_file: unnecessary_new, library_private_types_in_public_api, use_key_in_widget_constructors, import_of_legacy_library_into_null_safe, prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, must_be_immutable

import 'package:flutter/material.dart';
//Colors
import 'package:app_delivery/src/theme/pallete.dart';
//Widgets Filters
import 'package:app_delivery/src/features/presentation/commons_widgets/Headers/header_text_widget.dart';
import 'package:app_delivery/src/features/presentation/filter_page/View/custom_widgets/cuisines_filter_widget.dart';

import 'custom_widgets/list_tile_filter_widget.dart';
import 'custom_widgets/price_filter_widget.dart';

class FilterPage extends StatefulWidget {
  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  //SORT BY BOOLEANS
  bool topRated = false;
  bool nearMe = false;
  bool costHighToLow = false;
  bool costLowToHigh = false;
  bool mostPopular = false;

  //FILTER BOOLEANS
  bool openNow = false;
  bool creditCard = false;
  bool alcoholServed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 15.0, bottom: 15.0, left: 15.0),
                child: headerText(
                    texto: 'CUISINES',
                    color: gris,
                    fontWeight: FontWeight.w600,
                    fontSize: 17.0),
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: CuisinesFilter()),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 15.0, bottom: 15.0, left: 15.0),
                child: headerText(
                    texto: 'SORT BY',
                    color: gris,
                    fontWeight: FontWeight.w600,
                    fontSize: 17.0),
              ),
              _sortBy(),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 15.0, bottom: 15.0, left: 15.0),
                child: headerText(
                    texto: 'FILTER',
                    color: gris,
                    fontWeight: FontWeight.w600,
                    fontSize: 17.0),
              ),
              _filterByContainer(),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 15.0, bottom: 15.0, left: 15.0),
                child: headerText(
                    texto: 'PRICE',
                    color: gris,
                    fontWeight: FontWeight.w600,
                    fontSize: 17.0),
              ),
              Container(padding: EdgeInsets.symmetric(horizontal: 15.0),child: PriceFilter()),
              SizedBox(height: 15.0)
            ]),
          )
        ],
      ),
    );
  }

  PreferredSize _appBar(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(100),
      child: AppBar(
        elevation: 0.5,
        backgroundColor: white,
        centerTitle: true,
        title: headerText(texto: "Filters", fontWeight: FontWeight.w600),
        leading: Container(
            padding: EdgeInsets.only(top: 20.0, left: 7.0),
            child: headerText(
                texto: "Reset", fontWeight: FontWeight.w500, fontSize: 17.0)),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: EdgeInsets.only(top: 20.0, right: 10.0),
              child: headerText(
                  texto: "Done",
                  color: orange,
                  fontWeight: FontWeight.w500,
                  fontSize: 17.0),
            ),
          )
        ],
      ),
    );
  }

  Widget _sortBy() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        children: [
          ListTileFilter(
              texto: "Top Rated",
              isActive: topRated,
              func: () {
                setState(() => topRated = !topRated);
              }),
          ListTileFilter(
            texto: "Nearest Me",
            isActive: nearMe,
            func: () {
              setState(() => nearMe = !nearMe);
            },
          ),
          ListTileFilter(
            texto: "Cost High to Low",
            isActive: costHighToLow,
            func: () {
              setState(() => costHighToLow = !costHighToLow);
            },
          ),
          ListTileFilter(
            texto: "Cost Low to High",
            isActive: costLowToHigh,
            func: () {
              setState(() => costLowToHigh = !costLowToHigh);
            },
          ),
          ListTileFilter(
            texto: "Most Popular",
            isActive: mostPopular,
            func: () {
              setState(() => mostPopular = !mostPopular);
            },
          ),
        ],
      ),
    );
  }

  Widget _filterByContainer() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            ListTileFilter(
              texto: "Open Now",
              isActive: openNow,
              func: () {
                setState(() => openNow = !openNow);
              },
            ),
            ListTileFilter(
              texto: "Credit Cards",
              isActive: creditCard,
              func: () {
                setState(() => creditCard = !creditCard);
              },
            ),
            ListTileFilter(
              texto: "Alcohol Served",
              isActive: alcoholServed,
              func: () {
                setState(() => alcoholServed = !alcoholServed);
              },
            ),
          ],
        ));
  }
}
