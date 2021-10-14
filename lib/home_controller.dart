import 'dart:async';

import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeController {
  final Completer<GoogleMapController> _controller = Completer();

  googleMapController(GoogleMapController? controller) {
     _controller.complete(controller);
  }
}
