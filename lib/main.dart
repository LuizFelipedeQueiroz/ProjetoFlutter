import 'package:flutter/material.dart';
import 'package:flutter_application_1/Inicio.dart';

void main(){
 runApp(Parte1());
}

class Parte1 extends StatelessWidget {
  const Parte1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Parte2(),
    );
  }
}

class Parte2 extends StatefulWidget {
  const Parte2({super.key});

  @override
  State<Parte2> createState() => _Parte2State();
}

class _Parte2State extends State<Parte2> {
  final TextEditingController email = new TextEditingController();
  final TextEditingController senha = new TextEditingController();
  String e = "";
  String s = "";
  bool login = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(backgroundColor: Colors.blue, title: Center(child: Text("Aplicativo Etec", style: TextStyle(fontWeight: FontWeight.bold),)),),
          body: Column(children: [
            TextField(
              controller: email,
              onChanged: (value) {
                setState(() {
                  e = value;
                });
              },
              decoration: InputDecoration(labelText: "E-mail"),
              ),
              TextField( controller: senha,
                 obscureText: true,
              decoration: InputDecoration(labelText: "Senha"),
              onChanged: (value){
                setState(() {
                  s = value;
                });
              },
              ),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: () {
                if((e=="Usuario@email.com") && (s=="123")){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Inicio(),),);
                }else{
                  
                }
              }, 
              child: login ? CircularProgressIndicator(): Text("Logando"),),
          ],)
        
    );
  }
}
void itemsele(BuildContext context, int i){

}
//Main 