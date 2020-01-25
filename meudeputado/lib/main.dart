import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    home: Scaffold(
        body: ListaDeputados(),
        appBar: AppBar(
          title: Text('Deputados'),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
        )
    )
)
);

class ListaDeputados extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ItemDeputado(Deputado('ACRÍSIO SENA', 1000)),
        ItemDeputado(Deputado('TIN GOMES', 1234)),
        ItemDeputado(Deputado('VITOR VALIM', 4312)),
        ItemDeputado(Deputado('RENATO ROSENO', 5512)),
      ],
    );
  }
}

class ItemDeputado extends StatelessWidget{

  final Deputado _deputado;

  ItemDeputado(this._deputado);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.people),
        title: Text(_deputado.nome.toString()),
        subtitle: Text(_deputado.valor.toString()),

      ),
    );
  }

}

class Deputado {
  final String nome;
  final double valor;
  //final int numeroConta;

  Deputado(this.nome, this.valor);
}