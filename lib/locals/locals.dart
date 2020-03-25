import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:gsoc2020/lang/messages_all.dart';
import 'dart:async';

class AppLocations {
  static Future<AppLocations> load(Locale locale) {
    final String name =
        locale.countryCode.isEmpty ? locale.languageCode : locale.toString();
    final String localName = Intl.canonicalizedLocale(name);
    return initializeMessages(localName).then((bool _) {
      Intl.defaultLocale = localName;
      return AppLocations();
    });
  }

  static AppLocations of(BuildContext context) {
    return Localizations.of<AppLocations>(context, AppLocations);
  }

  String get title {
    return Intl.message("GSOC 2020",
        name: "title", desc: "This is a Demo Code For GSOC 2020");
  }

  String get text {
    return Intl.message("Hello Dart this is Muhammad Usama speaking",
        name: "text", desc: "This is a Demo Code For GSOC 2020");
  }

  String get appBar {
    return Intl.message("intl Demo Application",
        name: "appBar", desc: "This is a Demo Code For GSOC 2020");
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocations> {
  const AppLocalizationDelegate();

  @override
  bool isSupported(Locale locale) {
    // TODO: implement isSupported
    return ['en', 'es', 'zh', 'ur'].contains(locale.languageCode);
  }

  @override
  Future<AppLocations> load(Locale locale) {
    return AppLocations.load(locale);
  }

  @override
  bool shouldReload(LocalizationsDelegate<AppLocations> old) {
    return false;
  }
}
