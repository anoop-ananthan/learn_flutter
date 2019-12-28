// Flutter code sample for Scaffold

// This example shows a [Scaffold] with a [body] and [FloatingActionButton].
// The [body] is a [Text] placed in a [Center] in order to center the text
// within the [Scaffold]. The [FloatingActionButton] is connected to a
// callback that increments a counter.
//
// ![The Scaffold has a white background with a blue AppBar at the top. A blue FloatingActionButton is positioned at the bottom right corner of the Scaffold.](https://flutter.github.io/assets-for-api-docs/assets/material/scaffold.png)

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _count = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Code'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Headline\nYou have pressed the button $_count times.',
                style: Theme.of(context).textTheme.headline),
            SizedBox(
              height: 18,
            ),
            Text('Title\nYou have pressed the button $_count times.',
                style: Theme.of(context).textTheme.title),
            SizedBox(
              height: 18,
            ),
            Text('Body1\nYou have pressed the button $_count times.',
                style: Theme.of(context).textTheme.body1),
            SizedBox(
              height: 18,
            ),
            Text('Body2\nYou have pressed the button $_count times.',
                style: Theme.of(context).textTheme.body2),
            SizedBox(
              height: 18,
            ),
            Text('Subhead\nYou have pressed the button $_count times.',
                style: Theme.of(context).textTheme.subhead),
            SizedBox(
              height: 18,
            ),
            Text('Subtitle\nYou have pressed the button $_count times.',
                style: Theme.of(context).textTheme.subtitle),
            SizedBox(
              height: 18,
            ),
            SizedBox(
              height: 18,
            ),
            Center(
              child: Text(
                  'Caption in center\nYou have pressed the button $_count times.',
                  style: Theme.of(context).textTheme.caption),
            ),
            SizedBox(
              height: 18,
            ),
            Text('Normal\nYou have pressed the button $_count times.'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => _count++),
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
    );
  }
}
