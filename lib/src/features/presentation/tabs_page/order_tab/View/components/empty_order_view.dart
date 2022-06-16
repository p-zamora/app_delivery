import 'package:app_delivery/src/features/presentation/commons_widgets/Headers/header_text_widget.dart';
import 'package:app_delivery/src/theme/pallete.dart';
import 'package:flutter/material.dart';

class EmptyOrderView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgGreyPage,
      appBar: AppBar(
        backgroundColor: white,
        leading: Text(''),
        elevation: 0.5,
        title: headerText(
            texto: 'My Order',
            color: primaryColor,
            fontWeight: FontWeight.w600,
            fontSize: 17.0),
            centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                width: 216.0,
                height: 216.0,
                image: AssetImage('assets/emptyOrder.png'),
              ),
              Container(
                margin: EdgeInsets.only(top: 20.0),
                child: headerText(
                    texto: 'Cart Empty',
                    color: gris,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                margin: EdgeInsets.only(top: 20.0),
                padding: EdgeInsets.symmetric(horizontal: 50.0),
                child: headerText(
                    texto:
                        'Good food is always cooking! Go ahead, order some yummy items from the menu.',
                    textAlign: TextAlign.center,
                    color: gris,
                    fontSize: 17.0,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
      ),
    );
  }
}
