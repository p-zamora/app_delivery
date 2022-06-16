// ignore_for_file: prefer_const_constructors

import 'package:app_delivery/src/features/presentation/commons_widgets/Headers/header_text_widget.dart';
import 'package:app_delivery/src/theme/pallete.dart';
import 'package:flutter/material.dart';

class ProfileTab extends StatefulWidget {
  @override
  _ProfileTabState createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            _header(),
            _contentProfile(),
          ],
        ),
      ),
    );
  }

  Widget _header() {
    return Container(
      height: 180.0,
      color: bgGreyPage,
      padding: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 5.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                "https://images.unsplash.com/photo-1466112928291-0903b80a9466?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1053&q=80"),
            radius: 50.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 15.0),
                child: Row(
                  children: [
                    headerText(
                        texto: 'Cameron Cook',
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600),
                    IconButton(
                        icon: Icon(
                          Icons.chevron_right,
                          color: gris,
                        ),
                        onPressed: () =>
                            Navigator.pushNamed(context, 'profile-detail')),
                  ],
                ),
              ),
              Container(
                height: 25.0,
                margin: EdgeInsets.only(left: 20.0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)
                    ),
                    primary: rosa
                  ),
                  child: Row(
                    children: [
                      Image(
                          image: AssetImage("assets/crown.png"),
                          width: 16.0,
                          height: 16.0),
                      Container(
                        margin: EdgeInsets.only(left: 5.0),
                        child: headerText(
                            texto: 'VIP Member', color: white, fontSize: 11.0),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _contentProfile() {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: [
          ListTile(
            leading: Image(
              image: AssetImage('assets/noti.png'),
              width: 29.0,
              height: 29.0,
            ),
            title: headerText(texto: 'Notifications'),
            trailing: IconButton(
                icon: Icon(Icons.chevron_right, color: gris), onPressed: () {}),
          ),
          ListTile(
            leading: Image(
              image: AssetImage('assets/payicon.png'),
              width: 29.0,
              height: 29.0,
            ),
            title: headerText(texto: 'Payment method'),
            trailing: IconButton(
                icon: Icon(Icons.chevron_right, color: gris), onPressed: () {}),
          ),
          ListTile(
            leading: Image(
              image: AssetImage('assets/rewardicon.png'),
              width: 29.0,
              height: 29.0,
            ),
            title: headerText(texto: 'History'),
            trailing: IconButton(
                icon: Icon(Icons.chevron_right, color: gris), onPressed: () {}),
          ),
          ListTile(
            leading: Image(
              image: AssetImage('assets/promoicon.png'),
              width: 29.0,
              height: 29.0,
            ),
            title: headerText(texto: 'Promo Code'),
            trailing: IconButton(
                icon: Icon(Icons.chevron_right, color: gris), onPressed: () {}),
          ),
          SizedBox(height: 20.0),
          ListTile(
            leading: Image(
              image: AssetImage('assets/settingicon.png'),
              width: 29.0,
              height: 29.0,
            ),
            title: headerText(texto: 'Settings'),
            trailing: IconButton(
                icon: Icon(Icons.chevron_right, color: gris), onPressed: () {}),
          ),
          ListTile(
            leading: Image(
              image: AssetImage('assets/inviteicon.png'),
              width: 29.0,
              height: 29.0,
            ),
            title: headerText(texto: 'Invite Friends'),
            trailing: IconButton(
                icon: Icon(Icons.chevron_right, color: gris), onPressed: () {}),
          ),
          ListTile(
            leading: Image(
              image: AssetImage('assets/helpicon.png'),
              width: 29.0,
              height: 29.0,
            ),
            title: headerText(texto: 'Help Center'),
            trailing: IconButton(
                icon: Icon(Icons.chevron_right, color: gris), onPressed: () {}),
          ),
          ListTile(
            leading: Image(
              image: AssetImage('assets/abouticon.png'),
              width: 29.0,
              height: 29.0,
            ),
            title: headerText(texto: 'About us'),
            trailing: IconButton(
                icon: Icon(Icons.chevron_right, color: gris), onPressed: () {}),
          ),
        ],
      ),
    );
  }
}
