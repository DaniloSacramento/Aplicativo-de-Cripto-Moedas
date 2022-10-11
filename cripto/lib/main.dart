import 'package:flutter/material.dart';
import './pages/moedas.dart';
main(){
   runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MoedasBase",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch:  Colors.yellow
      ),
      home: MoedasPage()  // PAGINA PRINCIPAL DO APLICATIVO
      ,
    );
}
}