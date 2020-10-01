import 'package:carros_flutter_web/app_model.dart';
import 'package:carros_flutter_web/pages/carros_page.dart';
import 'package:carros_flutter_web/pages/default_page%20copy.dart';
import 'package:carros_flutter_web/pages/usuarios_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  String selectedMenuItem;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _listItem("Home", FontAwesomeIcons.home, DefaultPage()),
        _listItem("Carros", FontAwesomeIcons.car, CarrosPage()),
        _listItem("Usuário", FontAwesomeIcons.user, UsuariosPage()),
      ],
    );
  }

  _listItem(String title, IconData icon, Widget page) {
    bool selected = title == selectedMenuItem;

    return Material(
      color: selected ? Colors.blue[100] : Colors.transparent,
      child: InkWell(
        onTap: () {
          AppModel app = Provider.of(context, listen: false);
          app.setPage(page);

          setState(() {
            this.selectedMenuItem = title;
          });
        },
        child: ListTile(
          leading: Icon(
            icon,
          ),
          title: Text(title),
        ),
      ),
    );
  }
}
