import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fluttermap/home_controller.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeApp extends StatefulWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  final HomeController homeController = HomeController();
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: const CameraPosition(
              target: LatLng(
                -7.232398248532804,
                -39.41431116724223, //posição inicial do mapa
              ),
              zoom: 18,
            ),
            onMapCreated: (GoogleMapController controller) => homeController.onMapCreated(controller),
            onLongPress: ,
          ),
          Positioned(
              bottom: 20,
              left: 130,
              child: SizedBox(
                height: 50,
                child: ElevatedButton(
                  onPressed: () => homeController.navigatorToMarkerPage(context), //esse botão irá para outra tela
                  child: const Text("Meus marcadores"),
                ),
              ))
        ],
      ),
    );
  }
}
