import 'package:carros_flutter_web/pages/carros/carro.dart';
import 'package:carros_flutter_web/pages/carros/carro_page.dart';
import 'package:carros_flutter_web/pages/carros/carros_api.dart';
import 'package:carros_flutter_web/utils/font_size.dart';
import 'package:carros_flutter_web/utils/nav.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../app_model.dart';

class CarrosPage extends StatefulWidget {
  @override
  _CarrosPageState createState() => _CarrosPageState();
}

class _CarrosPageState extends State<CarrosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Carro>>(
        future: CarrosApi.getCarros(context),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          List<Carro> lista = snapshot.data;

          return _listView(lista);
        },
      ),
    );
  }

  _listView(List<Carro> lista) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        childAspectRatio: 1.5,
      ),
      itemCount: lista.length,
      itemBuilder: (context, index) {
        return LayoutBuilder(builder: (context, constraints) {
          double fontSize = size(constraints.maxWidth * 0.08, min: 8, max: 22);

          Carro car = lista[index];

          return InkWell(
            onTap: () => _onClickCarro(car),
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(car.urlFoto ??
                      "https://s3-sa-east-1.amazonaws.com/videos.livetouchdev.com.br/esportivos/Audi_Spyder.png"),
                  Text(
                    car.nome ?? "Audi",
                    style: TextStyle(fontSize: fontSize),
                  ),
                ],
              ),
            ),
          );
        });
      },
    );
  }

  void _onClickCarro(Carro carro) {
    AppModel app = Provider.of(context, listen: false);
    app.push(CarroPage(carro));
  }
}
