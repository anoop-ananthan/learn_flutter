// Flutter code sample for InputDecoration

// This sample shows how to create a `TextField` with hint text, a red border
// on all sides, and an error message. To display a red border and error
// message, provide `errorText` to the `InputDecoration` constructor.
//
// ![](https://flutter.github.io/assets-for-api-docs/assets/material/input_decoration_error.png)

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
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Hint Text',
          errorText: 'Error Text',
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
