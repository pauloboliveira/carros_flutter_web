import 'package:carros_flutter_web/app_model.dart';
import 'package:carros_flutter_web/pages/carros/carro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CarroPage extends StatefulWidget {
  final Carro carro;

  CarroPage(this.carro);

  @override
  _CarroPageState createState() => _CarroPageState(carro);
}

class _CarroPageState extends State<CarroPage> {
  Carro carro;

  _CarroPageState(this.carro);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(carro.nome),
        leading: IconButton(
            icon: Icon(
              Icons.close,
              color: Colors.white,
            ),
            onPressed: _onClickClose),
      ),
      body: _body(),
    );
  }

  _body() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(carro.urlFoto ??
              "https://s3-sa-east-1.amazonaws.com/videos.livetouchdev.com.br/esportivos/Audi_Spyder.png"),
          Text(
            carro.nome ?? "Audi",
          ),
        ],
      ),
    );
  }

  void _onClickClose() {
    AppModel app = Provider.of(context, listen: false);
    app.removeLast();
  }
}
