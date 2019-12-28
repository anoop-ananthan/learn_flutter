// Flutter code sample for InputDecoration

// This sample shows how to style a `TextField` using an `InputDecorator`. The
// TextField displays a "send message" icon to the left of the input area,
// which is surrounded by a border an all sides. It displays the `hintText`
// inside the input area to help the user understand what input is required. It
// displays the `helperText` and `counterText` below the input area.
//
// ![](https://flutter.github.io/assets-for-api-docs/assets/material/input_decoration.png)

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: MyStatelessWidget(),
      ),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.send),
              hintText: 'Hint Text',
              helperText: 'Helper Text',
              counterText: '0 characters',
              border: const OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(
              isDense: true,
              hintText: 'isDense is true',
              suffixIcon: Icon(Icons.send),
              helperText: 'Helper Text',
              counterText: '0 characters',
              border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
          ),
        ],
      ),
    );
  }
}
