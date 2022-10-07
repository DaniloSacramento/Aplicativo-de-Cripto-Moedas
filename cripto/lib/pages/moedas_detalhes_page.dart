import 'package:app/model/moedaCripto.dart';
import 'package:flutter/material.dart';

class MoedasDetalhes extends StatefulWidget {

  MoedaCripto moeda;

  MoedasDetalhes({ required this.moeda});

  @override
  State<MoedasDetalhes> createState() => _MoedasDetalhesState();
}

class _MoedasDetalhesState extends State<MoedasDetalhes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(widget.moeda.nome.toString()),
      ),
      body: Column(
        children: [
          Row(
            children: 
            [
              SizedBox(child: Image.asset(widget.moeda.nome.toString()),
              width: 70,)],
          ),
        ],
      ) ,
    );
  }
}