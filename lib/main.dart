import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'src/themes/spacing/linear_scale.dart';
import 'src/themes/text/accent_text_theme.dart';
import 'src/themes/text/generic_text_theme.dart';
import 'src/themes/text/typography/h/h1.dart';
import 'src/themes/text/typography/h/h2.dart';
import 'src/themes/text/typography/h/h3.dart';
import 'src/themes/text/typography/h/h4.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appName = 'Custom Themes';

    return MaterialApp(
      title: appName,
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyan[600],

        // Define the default font family.
        fontFamily: 'Montserrat',

        // Define the default TextTheme. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: GenericTextTheme(),
        accentTextTheme: AccentTextTheme(),
      ),
      home: MyHomePage(
        title: appName,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Container(
          color: Theme.of(context).accentColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                color: Colors.red,
                padding: EdgeInsets.all(space_spring_green),
                margin: EdgeInsets.all(space_carmine),
                child: H1(
                  text: 'texto h1 XD',
                ),
              ),
              Container(
                color: Colors.green,
                padding: EdgeInsets.symmetric(
                  horizontal: space_golden_dream,
                  vertical: space_spring_green,
                ),
                child: H2(
                  text: 'texto h2 XD',
                ),
              ),
              Container(
                color: Colors.orange,
                padding: EdgeInsets.only(
                  bottom: space_dodger_blue,
                ),
                child: H3(
                  text: 'texto h3 XD',
                ),
              ),
              Container(
                color: Colors.pink,
                padding: EdgeInsets.fromLTRB(
                  space_dodger_blue,
                  space_spring_green,
                  space_fire_bush,
                  space_carmine,
                ),
                child: H4(
                  text: 'texto h4 XD',
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Theme(
        data: Theme.of(context).copyWith(
          colorScheme:
              Theme.of(context).colorScheme.copyWith(secondary: Colors.yellow),
        ),
        child: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
