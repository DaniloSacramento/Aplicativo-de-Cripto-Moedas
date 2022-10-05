import 'package:app/model/moedaCripto.dart';
import 'package:app/repositories/moeda_repository.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class MoedasPage extends StatelessWidget {
  const MoedasPage({super.key});

  @override
  Widget build(BuildContext context) {
    final tabela = MoedasRepository.tabela;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Cripto Moedas"),
        ),
        body: ListView.separated(
          itemBuilder: (BuildContext context, int moeda){
            return ListTile(
              leading: Image.asset(tabela[moeda].icone.toString()),
              title: Text(tabela[moeda].nome.toString()),
              trailing: Text(tabela[moeda].preco.toString()),
            );
          },
          padding: const EdgeInsets.all(16) ,
          separatorBuilder: (_,__) => const Divider(),
          itemCount: tabela.length,
        )
        );
  }
}
