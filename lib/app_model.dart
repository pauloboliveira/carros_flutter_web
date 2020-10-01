import 'package:carros_flutter_web/pages/default_page%20copy.dart';
import 'package:flutter/cupertino.dart';

class AppModel extends ChangeNotifier {

  Widget page;

  String nome;

  AppModel(){
    page = DefaultPage();
    nome = "Paulo";
  }

  setPage(Widget page){
    this.page = page;

    notifyListeners();
  }

  setNome(nome) {
    this.nome = nome;

    notifyListeners();
  }
}
