import 'package:flutter/material.dart';

void main() => runApp(BytebankApp());

class BytebankApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(home: FormularioTransferencia());
  }
}

class Header extends AppBar {
  Header(String titulo) : super(title: Text(titulo));
}

class ListaDeTransferencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Header('transferência'),
        body: Column(children: [
          ItemTransferencia(Transferencia(100, 120202)),
          ItemTransferencia(Transferencia(2999, 4949494)),
          ItemTransferencia(Transferencia(399, 4949494)),
          ItemTransferencia(Transferencia(399, 4949494)),
          ItemTransferencia(Transferencia(349, 4949494)),
          ItemTransferencia(Transferencia(349, 4949494)),
        ]));
  }
}

class Transferencia {
  final double valor;
  final int numeroConta;

  Transferencia(this.valor, this.numeroConta);
}

class ItemTransferencia extends StatelessWidget {
  final Transferencia _tranferencia;

  ItemTransferencia(this._tranferencia);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
          leading: Icon(Icons.monetization_on),
          title: Text(_tranferencia.valor.toString()),
          subtitle: Text(_tranferencia.numeroConta.toString())),
    );
  }
}

class FormularioTransferencia extends StatelessWidget {
  @override
  Widget	build(BuildContext	context)	{
    return	Scaffold(
      appBar:	AppBar(
        title:	Text('Criando	Transferência'),
      ),
      body:	Column(
        children:	<Widget>[
          Padding(padding: EdgeInsets.all(12.0),
            child:TextField(
              style:TextStyle(fontSize: 24.0),
              decoration: InputDecoration(
                labelText: "Número da Conta",
                hintText: "0000",
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(padding: EdgeInsets.all(12.0),
            child:TextField(
              style:TextStyle(fontSize: 24.0),
              decoration: InputDecoration(
               icon: Icon(Icons.monetization_on),
                labelText: "Valor",
                hintText: "0.00",
              ),
              keyboardType: TextInputType.numberWithOptions(signed:false,
                  decimal: true
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(12.0),
            child:RaisedButton(
              child:Text("Confirmar"),
              onPressed: () {
                print("Clicou em confirmar");
              },
            ),

          )
        ],
      ),
    );
  }
}
