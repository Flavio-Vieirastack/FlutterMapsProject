import 'package:flutter/cupertino.dart';

class HomeController {
   navigatorToMarkerPage(BuildContext context) {
    Navigator.pushNamed(context, "/markers");
  }
}
