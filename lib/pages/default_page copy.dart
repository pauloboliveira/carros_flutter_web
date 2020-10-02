import 'package:carros_flutter_web/utils/debug_widget_size.dart';
import 'package:carros_flutter_web/utils/font_size.dart';
import 'package:flutter/material.dart';

class DefaultPage extends StatefulWidget {
  @override
  _DefaultPageState createState() => _DefaultPageState();
}

class _DefaultPageState extends State<DefaultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  _body() {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        childAspectRatio: 1.5,
      ),
      itemCount: 100,
      itemBuilder: (context, index) {
        return LayoutBuilder(builder: (context, constraints) {
          double fontSize = size(constraints.maxWidth * 0.08, min: 8, max: 22);

          return Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: 250,
                  ),
                  child: Container(
                    color: Colors.blue[50],
                    child: Image.network(
                        "https://s3-sa-east-1.amazonaws.com/videos.livetouchdev.com.br/esportivos/Audi_Spyder.png"),
                  ),
                ),
                Text(
                  "Audi",
                  style: TextStyle(fontSize: fontSize),
                ),
              ],
            ),
          );
        });
      },
    );
  }
}
