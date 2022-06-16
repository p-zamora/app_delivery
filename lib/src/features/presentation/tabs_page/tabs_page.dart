import 'package:app_delivery/src/features/presentation/commons_widgets/Buttons/rounded_button_widget.dart';
import 'package:flutter/material.dart';
//Colors
import 'package:app_delivery/src/theme/pallete.dart';
//Widgets
import 'package:app_delivery/src/features/presentation/commons_widgets/Alerts/alert_dialog_widget.dart';
//Tabs
import 'package:app_delivery/src/features/presentation/tabs_page/explore_tab/View/explorer_tab.dart';
import 'package:app_delivery/src/features/presentation/tabs_page/order_tab/View/order_tab.dart';
import 'package:app_delivery/src/features/presentation/tabs_page/favorite_tab/View/favorite_tab.dart';
import 'package:app_delivery/src/features/presentation/tabs_page/profile_tab/View/profile_tab.dart';

class TabsPage extends StatefulWidget {
  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {

  @override
  void initState() { 
    super.initState();
    Future.delayed(Duration.zero, () {
      _callLocation(context);
    });
  }


  List<Widget> _widgetOptions = [
    ExplorerTab(),
    OrderTab(),
    FavoriteTab(),
    ProfileTab()
  ];

  int _selectedItemIndex = 0;

  void _changeWidget(int index) {
    setState(() {
      _selectedItemIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedItemIndex),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
      iconSize: 30.0,
      selectedItemColor: orange,
      unselectedItemColor: Colors.grey,
      currentIndex: _selectedItemIndex,
      onTap: _changeWidget,
      showUnselectedLabels: true,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.explore), 
          label: 'Explorer'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.assignment), 
          label: 'My Order'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.book), 
          label: 'Favorite'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_pin), 
          label: 'Profile'
        ),
      ],
    );
  }

  Future _callLocation(BuildContext context) async{
    await showAlertDialog(context, AssetImage("assets/location.png"), "Enabled Your Location", 
    "Please allow to use your location o show nearby restaurant on the map.", 
    roundedButton(width: 370.0, height: 45.0 ,top: 40.0, color: orange, 
    labelButton: "Enabled your location",fontSize: 17.0, func: () => print("Permission GPS")));    
  }

}
