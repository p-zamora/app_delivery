import 'package:app_delivery/src/features/presentation/commons_widgets/Headers/header_text_widget.dart';
import 'package:app_delivery/src/theme/pallete.dart';
import 'package:flutter/material.dart';

import 'components/empty_order_view.dart';

class OrderTab extends StatefulWidget {
  @override
  _OrderTabState createState() => _OrderTabState();
}

class _OrderTabState extends State<OrderTab> {
  final emptyOrderState = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: emptyOrderState
          ? EmptyOrderView()
          : CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  leading: Text(''),
                  elevation: 0.5,
                  backgroundColor: white,
                  title: headerText(
                      texto: 'My Order',
                      color: primaryColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 17.0),
                  centerTitle: true,
                ),
                SliverList(
                  delegate: SliverChildListDelegate([
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(
                        children: [
                          _orders(context),
                          SizedBox(height: 40.0),
                          _checkoutResumen(context),
                        ],
                      ),
                    )
                  ]),
                )
              ],
            ),
    );
  }

  Widget _orders(BuildContext context) {
    return Column(
      children: [
        _cardOrders(context),
      ],
    );
  }

  Widget _cardOrders(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      margin: EdgeInsets.symmetric(vertical: 10.0),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Color.fromRGBO(248, 248, 248, 1.0),
          boxShadow: [
            BoxShadow(
                color: Color.fromRGBO(210, 211, 215, 1.0),
                spreadRadius: 1.0,
                blurRadius: 4.0)
          ]),
      child: Column(
        children: [
          Row(
            children: [
              _createOrderTopContent(),
            ],
          ),
          Column(
            children: [
              _items(context),
              _items(context),
              _items(context),
              _items(context),
            ],
          ),
          _moreContent(context),
        ],
      ),
    );
  }

  Widget _createOrderTopContent() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 7.0, bottom: 7.0, right: 20.0),
            child: headerText(
                texto: 'Little Creatures - Club Street',
                fontSize: 20.0,
                fontWeight: FontWeight.bold),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.location_on, color: gris, size: 16.0),
                headerText(
                    texto: '87 Botsford Circle Apt',
                    color: gris,
                    fontWeight: FontWeight.w500,
                    fontSize: 14.0),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  width: 110.0,
                  height: 20.0,
                  child: Row(
                    children: [
                      RaisedButton(
                        onPressed: () {},
                        elevation: 0.5,
                        shape: StadiumBorder(),
                        color: orange,
                        child: headerText(
                            texto: "Free Delivery",
                            color: white,
                            fontSize: 11.0),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _items(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(color: Theme.of(context).dividerColor))),
      child: ListTile(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            headerText(
                texto: 'Special Gajananad Bhel',
                color: orange,
                fontWeight: FontWeight.w300,
                fontSize: 15.0),
            headerText(
                texto: 'Mixed vegetables, Chicken Egg',
                color: gris,
                fontWeight: FontWeight.w300,
                fontSize: 12.0),
          ],
        ),
        trailing: headerText(
            texto: 'S/. 17.20',
            color: gris,
            fontWeight: FontWeight.w300,
            fontSize: 15.0),
      ),
    );
  }

  Widget _moreContent(BuildContext context) {
    return Container(
      child: ListTile(
        title: headerText(
            texto: 'Add more items',
            color: rosa,
            fontWeight: FontWeight.w300,
            fontSize: 17.0),
      ),
    );
  }

  Widget _checkoutResumen(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.symmetric(vertical: 10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: white,
          boxShadow: [
            BoxShadow(
                color: Color.fromRGBO(210, 211, 215, 1.00),
                spreadRadius: 1.0,
                blurRadius: 4.0)
          ]),
      child: Column(
        children: [
          _itemCheckoutResumen(
              title: 'Subtotal', value: 'S/ 93.40', context: context),
          _itemCheckoutResumen(
              title: 'Tax & Fees', value: 'S/ 2.00', context: context),
          _itemCheckoutResumen(
              title: 'Delivery', value: 'Free', context: context),
          _buttonCheckout(context),
        ],
      ),
    );
  }

  Widget _itemCheckoutResumen(
      {title: String, value: String, context: BuildContext}) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(color: Theme.of(context).dividerColor))),
      child: ListTile(
        title: headerText(
            texto: title, fontWeight: FontWeight.w400, fontSize: 15.0),
        trailing: headerText(
            texto: value, fontWeight: FontWeight.w400, fontSize: 15.0),
      ),
    );
  }

  Widget _buttonCheckout(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 45.0,
      margin: EdgeInsets.only(top: 10.0),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
      child: RaisedButton(
          elevation: 0.5,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          color: orange,
          textColor: white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(),
              Container(
                margin: EdgeInsets.only(left: 50.0),
                child: headerText(
                    texto: 'Continue',
                    fontSize: 17.0,
                    color: white,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                child: headerText(
                    texto: 'S/ 95.40',
                    fontSize: 15.0,
                    color: white,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          onPressed: () {}),
    );
  }
}
