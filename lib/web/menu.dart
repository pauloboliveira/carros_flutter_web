import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _listItem("Home", FontAwesomeIcons.home),
        _listItem("Carros", FontAwesomeIcons.car),
        _listItem("Usuário", FontAwesomeIcons.user),
      ],
    );
  }

  _listItem(String title, IconData icon) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {},
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
