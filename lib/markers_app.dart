import 'package:flutter/material.dart';

class MarkersApp extends StatefulWidget {

  const MarkersApp({ Key? key }) : super(key: key);

  @override
  _MarkersAppState createState() => _MarkersAppState();
}

class _MarkersAppState extends State<MarkersApp> {

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Meus marcadores'),),
           body: Container(),
       );
  }
}