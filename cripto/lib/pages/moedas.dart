import 'package:app/model/moedaCripto.dart';
import 'package:app/repositories/moeda_repository.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import "package:intl/intl.dart";

class MoedasPage extends StatefulWidget {
  @override
  State<MoedasPage> createState() => _MoedasPageState();
}

class _MoedasPageState extends State<MoedasPage> {
  final tabela = MoedasRepository.tabela;

  NumberFormat real = NumberFormat.currency(locale: "pt_BR", name: "R\$");

  List<MoedaCripto> selecionadas = [];

  appBarDinamica(){
    if(selecionadas.isEmpty){
      return AppBar(
      title: Text("Cripto Moedas")
    );
    }else{
      return AppBar(
     leading:  IconButton(icon: Icon(Icons.arrow_back),
              onPressed: () {
                setState(() {
                  selecionadas = [];
                });
              }),
              title: Text("${selecionadas.length} selecionadas"),
              backgroundColor: Colors.blueGrey[50],
              elevation: 1,
              iconTheme: IconThemeData(color: Colors.black87),
              titleTextStyle: 
              const  TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                )
              )
      ;
    }
    
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        appBar: appBarDinamica(),
        body: ListView.separated(
          itemBuilder: (BuildContext context, int moeda){
            return  
                  ListTile(
                  shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)) ),
                  leading: 
                  (selecionadas.contains(tabela[moeda])) ?
                 const  CircleAvatar(
                    child: const Icon(Icons.check),
                  ) :
                  SizedBox(
                    child:  Image.asset(tabela[moeda].icone.toString()),
                    width: 40,
                  ),
                  title: Text(tabela[moeda].nome.toString(),
                   style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                   
                  ),
                  ),
                  trailing: Text(real.format(tabela[moeda].preco)
                  ),
                  selected: selecionadas.contains(tabela[moeda]),
                  selectedTileColor: Colors.indigo[50],
                  onLongPress: () {
                     setState(() {
                       if(selecionadas.contains(tabela[moeda])){
                      selecionadas.remove(tabela[moeda]);
                     }else{
                     selecionadas.add(tabela[moeda]);
                     }
                     });
                  } ,
                );
            
            
          },
          padding: const EdgeInsets.all(16) ,
          separatorBuilder: (_,__) => const Divider(),
          itemCount: tabela.length,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: selecionadas.isNotEmpty? 
         FloatingActionButton.extended(
          onPressed:(){}, 
          icon: const Icon(Icons.star),
          label: const Text("FAVORITAR",
          style: TextStyle(
            letterSpacing: 0,
            fontWeight: FontWeight.bold
          ),
          ),
          
        )
        : null ,
        );
  }
}
