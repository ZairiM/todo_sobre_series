import 'package:compatibilidad_pantallas/utils/master_detail_container.dart';
//import 'package:compatibilidad_pantallas/utils/master_detail_containere_caps.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ejemplo de compatibilidad con diferentes pantallas',

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MasterDetailContainer(),
    );
  }
}
