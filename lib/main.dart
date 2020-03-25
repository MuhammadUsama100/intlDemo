import 'package:flutter/material.dart';
import "package:gsoc2020/locals/locals.dart";
import 'package:flutter_localizations/flutter_localizations.dart';

import 'locals/locals.dart';
import 'locals/locals.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizationDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [
        Locale("en", ""),
        Locale("es", ""),
        Locale("ur", ""),
        Locale("zh", ""),
      ],
      onGenerateTitle: (BuildContext context) => AppLocations.of(context).title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: IntlDemo(),
    );
  }
}

class IntlDemo extends StatefulWidget {
  IntlDemo({Key key}) : super(key: key);

  @override
  _IntlDemoState createState() => _IntlDemoState();
}

class _IntlDemoState extends State<IntlDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocations.of(context).appBar),
      ),
      body: Center(
        child: Container(
          child: Text(AppLocations.of(context).text),
        ),
      ),
    );
  }
}
