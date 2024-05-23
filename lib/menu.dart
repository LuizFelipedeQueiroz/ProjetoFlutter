import 'package:flutter/material.dart';
import 'package:flutter_application_1/Ajuda.dart';
import 'package:flutter_application_1/Curso.dart';
import 'package:flutter_application_1/FaleConosco.dart';
import 'package:flutter_application_1/Inicio.dart';
import 'package:flutter_application_1/Noticias.dart';
import 'package:flutter_application_1/main.dart';

//import 'package:flutter_application_4/main.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
     child:  Material(
      color:  Colors.blueAccent,
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 25),
        children: [
               Cabecalho(
               nome: "Teste", 
               datade: "25/04/2024", 
               imagem: "",
               email: "teste@gmail.com"),
               const SizedBox(height: 15,),
               Text("Home"),
               itemMenu(text: "Área do Aluno", icone: Icons.person, clique: () => itemselecao(context, 0),),
               Text("Eventos"),
               itemMenu(text: "Vestibulinho", icone: Icons.event,clique: () => itemselecao(context, 1),),
               Text("Notícia"),
               itemMenu(text: "Notícias", icone: Icons.newspaper,clique: () => itemselecao(context, 2)),
               Text("Contato"),
               itemMenu(text: "Fale Conosco", icone: Icons.chat_bubble,clique: () => itemselecao(context,3),),
               Text("Cursos"),
               itemMenu(text: "Cursos", icone: Icons.book,clique: () => itemselecao(context, 4),),
               Text("Sair"),
               itemMenu(text: "Sair", icone: Icons.door_back_door, clique: () => itemselecao(context, 5),),
               
        ],
      ),
      ),
    );
  }
}

Widget itemMenu({
  required String text,
  required IconData icone,
  VoidCallback? clique,
}){
  return ListTile(
    leading: Icon(icone, color: Colors.white,),
    title: Text(text, style: TextStyle(color: Colors.white),),
    hoverColor: Colors.cyan,
    onTap: clique,
  );
}

void itemselecao(BuildContext context, int i){
      Navigator.of(context).pop();

  switch(i){
    case 0:
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Inicio(),
    ),
    );
     case 1:
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Ajuda(),
    ),);
    break;
     case 2:
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Noticias(),
    ),);
    break;
    case 3:
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Faleconosco(),
    ),);
    break;
    case 4:
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Cursos(),),);
    break;
    case 5:
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Parte2(),),);
    break;
  }
}
Cabecalho({
  required String nome,
  required String datade,
  required String imagem,
  required String email,
}) =>
InkWell(
  onTap: (){},
  child: Row(
    children: [ 
      CircleAvatar(
        radius: 35,
        backgroundImage: NetworkImage(imagem),
      ),
      const SizedBox(width: 20,),
      Column(children: [
        Text(nome, style: TextStyle(fontSize: 25, color: Colors.white),),
        const SizedBox(width: 15,),
        Text(datade, style: TextStyle(fontSize: 15, color: Colors.white),),
        const SizedBox(width: 15,),
        Text(email, style: TextStyle(fontSize: 10, color: Colors.white),),
      ],)
    ],
  ),
);