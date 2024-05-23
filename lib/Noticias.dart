import 'package:flutter/material.dart';
import 'package:flutter_application_1/menu.dart';


class Noticias extends StatelessWidget {
  const Noticias({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Menu(),
      appBar: AppBar(backgroundColor: Colors.blue, title: Center(child: Text("Aplicativo Etec: Notícias")),),
      body: Column(children: [Row(
        children: [ Center(child: const Image(image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg')))]
      )],),
    );
  }
}

