import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../app_model.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    print("build Body");
    AppModel app = Provider.of(context);

    return app.pages.last;
  }
}