import 'package:flutter/cupertino.dart';

//Pages
import 'package:app_delivery/src/features/presentation/welcome_page/View/welcome_page.dart';
import 'package:app_delivery/src/features/presentation/login_page/View/login_page.dart';
import 'package:app_delivery/src/features/presentation/forgot_password_page/View/forgot_password_page.dart';
import 'package:app_delivery/src/features/presentation/sign_up_page/View/sign_up_page.dart';
import 'package:app_delivery/src/features/presentation/tabs_page/tabs_page.dart';
import 'package:app_delivery/src/features/presentation/search_page/View/search_page.dart';
import 'package:app_delivery/src/features/presentation/filter_page/View/filter_page.dart';
import 'package:app_delivery/src/features/presentation/collections_page/View/collections_page.dart';
import 'package:app_delivery/src/features/presentation/collection_detail_page/View/collection_detail_page.dart';
import 'package:app_delivery/src/features/presentation/place_detail_page/View/place_detail_page.dart';
import 'package:app_delivery/src/features/presentation/profile_detail_page/View/profile_detail_page.dart';


final routes = <String, WidgetBuilder> {
  'welcome'           : (BuildContext context) => WelcomePage(),
  'login'             : (BuildContext context) => LoginPage(),
  'forgot-password'   : (BuildContext context) => ForgotPasswordPage(),
  'signup'            : (BuildContext context) => SignUpPage(),
  'tabs'              : (BuildContext context) => TabsPage(),
  'search'            : (BuildContext context) => SearchPage(),  
  'filter'            : (BuildContext context) => FilterPage(),
  'collections'       : (BuildContext context) => CollectionsPage(),
  'collection-detail' : (BuildContext context) => CollectionDetailPage(),
  'place-detail'      : (BuildContext context) => PlaceDetailPage(),
  'profile-detail'    : (BuildContext context) => ProfileDetailPage(),
};