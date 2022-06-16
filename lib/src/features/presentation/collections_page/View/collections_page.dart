import 'package:app_delivery/src/features/presentation/commons_widgets/BackButtons/back_button_widget.dart';
import 'package:app_delivery/src/features/presentation/commons_widgets/Headers/header_text_widget.dart';
import 'package:app_delivery/src/theme/pallete.dart';
import 'package:flutter/material.dart';

class CollectionsPage extends StatefulWidget {
  @override
  _CollectionsPageState createState() => _CollectionsPageState();
}

class _CollectionsPageState extends State<CollectionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: white,
            centerTitle: true,
            title: headerText(texto: 'Collections', fontSize: 17.0),
            leading: Builder(builder: (BuildContext context) {
              return backButton(context, Colors.black);
            }),
          ),
          SliverPadding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            sliver: SliverGrid.count(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              children: [
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _card(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'collection-detail');
      },
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image(
                width: 190.0,
                height: 190.0,
                fit: BoxFit.cover,
                image: NetworkImage("https://images.unsplash.com/photo-1611280422374-fa3c1110c16e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80"),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(right: 20.0, bottom: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                headerText(texto: 'Asia', color: white, fontSize: 18.0, fontWeight: FontWeight.bold),
                headerText(texto: '128 places', color: white, fontSize: 15.0, fontWeight: FontWeight.w300),
              ],
            ),
          )
        ],
      )
    );
  }
}
