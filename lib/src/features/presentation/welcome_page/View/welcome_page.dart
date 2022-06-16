import 'package:flutter/material.dart';
//UI
import 'dart:ui';
//Colors
import 'package:app_delivery/src/theme/pallete.dart';
//Commons widgets
import 'package:app_delivery/src/features/presentation/commons_widgets/Headers/header_text_widget.dart';
import 'package:app_delivery/src/features/presentation/commons_widgets/Buttons/rounded_button_widget.dart';
//Services
import 'package:flutter/services.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent,
    ));

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://jimmyspices.co.uk/wp-content/uploads/2017/12/jimmy-spices-global-buffet-americas3.jpg'),
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 1.5, sigmaY: 1.5),
              child: Container(
                color: Colors.black.withOpacity(0.4),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 50.0),
                  child: headerText(
                      texto: 'DELIVERED FAST FOOD TO YOUR DOOR',
                      color: white,
                      fontSize: 50.0)),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),
                child: Text(
                  'Set exact location to find the right resturants near you.',
                  style: TextStyle(
                      color: white,
                      fontWeight: FontWeight.w400,
                      fontSize: 17.0),
                ),
              ),
              roundedButton(
                  labelButton: 'Log In',
                  color: orange,
                  func: () {
                    Navigator.pushNamed(context, "login");
                  }),
              roundedButton(
                  labelButton: 'Connect with facebook',
                  color: fbButtonColor,
                  isWithIcon: true,
                  icon: AssetImage('assets/facebook.png'),
                  func: () => print("Connect with Facebook")),
            ],
          )
        ],
      ),
    );
  }
}
