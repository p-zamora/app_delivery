import 'package:flutter/material.dart';
//Commons Widgets
import 'package:app_delivery/src/features/presentation/commons_widgets/Headers/header_text_widget.dart';
import 'package:app_delivery/src/features/presentation/commons_widgets/BackButtons/back_button_widget.dart';
import 'package:app_delivery/src/features/presentation/commons_widgets/Alerts/alert_dialog_widget.dart';
import 'package:app_delivery/src/features/presentation/commons_widgets/Buttons/rounded_button_widget.dart';
//Colors
import 'package:app_delivery/src/theme/pallete.dart';
//Services
import 'package:flutter/services.dart';

class ForgotPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent,
    ));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return backButton(context, Colors.black);
          },
        ),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(30.0),
          child: Column(
            children: [
              headerText(texto: 'Forgot Password', color: primaryColor, fontSize: 30.0),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Please enter your email address. You will recieve a linl to create a new password vía email.',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 15.0),
                  textAlign: TextAlign.center,
                ),
              ),
              _emailInput(),
              roundedButton(color: orange, labelButton: "Send", func: () => _showAlert(context)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _emailInput() {
    return Container(
      margin: EdgeInsets.only(top: 40.0),
      padding: EdgeInsets.only(left: 20.0),
      decoration: BoxDecoration(
          color: Color.fromRGBO(142, 142, 147, 1.2),
          borderRadius: BorderRadius.circular(30.0)),
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(borderSide: BorderSide.none),
            hintText: 'Your Email'),
        keyboardType: TextInputType.emailAddress,
      ),
    );
  }

  void _showAlert(BuildContext context) {
    showAlertDialog(
        context,
        AssetImage('assets/lock.png'),
        'Your password has been reset.',
        "You'll shortly recieve an email with a code to setup a new password.",
        roundedButton(labelButton: "Done", color: orange, func: () {
          Navigator.pushNamed(context, "login");
        }));
  }
}
