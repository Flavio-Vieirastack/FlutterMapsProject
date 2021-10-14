import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeController {
  navigatorToMarkerPage(BuildContext context) {
    Navigator.pushNamed(context, "/markers");
  }

  onMapCreated(GoogleMapController controller) {
    final Completer<GoogleMapController> _controller = Completer();
    _controller.complete(controller);
  }

  markerExibition (LatLng latLng) {

  }
}
