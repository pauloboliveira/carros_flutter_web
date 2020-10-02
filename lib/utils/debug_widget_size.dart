import 'package:flutter/material.dart';

class DebugWidgetSize extends StatelessWidget {
  const DebugWidgetSize({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Center(
          child: Text('${constraints.maxWidth}/${constraints.maxHeight}'),
        );
      },
    );
  }
}
