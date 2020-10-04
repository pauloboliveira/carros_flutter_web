import 'package:carros_flutter_web/pages/default_page.dart';
import 'package:flutter/cupertino.dart';

class AppModel extends ChangeNotifier {

  List<Widget> pages = [];

  String nome;

  AppModel(){
    pages.add(DefaultPage());
    nome = "Paulo";
  }

  push(Widget page){
    this.pages.add(page);

    notifyListeners();
  }

  removeLast(){
    this.pages.removeLast();

    notifyListeners();
  }

  setNome(nome) {
    this.nome = nome;

    notifyListeners();
  }
}
