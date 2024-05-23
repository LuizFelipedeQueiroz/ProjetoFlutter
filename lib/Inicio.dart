import 'package:flutter/material.dart';
import 'package:flutter_application_1/menu.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Menu(),
      appBar: AppBar(backgroundColor: Colors.blue, title: Center(child: Text("Aplicativo Etec")),),
    );
  }
}