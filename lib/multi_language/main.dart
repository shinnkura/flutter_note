import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'classes/language_constants.dart';
import 'router/custom_router.dart';
import 'router/route_constatns.dart';

void main() {
  runApp(const MultiLanguageApp());
}

class MultiLanguageApp extends StatefulWidget {
  const MultiLanguageApp({Key? key}) : super(key: key);

  @override
  State<MultiLanguageApp> createState() => _MultiLanguageAppState();

  static void setLocale(BuildContext context, Locale newLocale) {
    _MultiLanguageAppState? state = context.findAncestorStateOfType<_MultiLanguageAppState>();
    state?.setLocale(newLocale);
  }
}

class _MultiLanguageAppState extends State<MultiLanguageApp> {
  Locale? _locale;

  setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  void didChangeDependencies() {
    getLocale().then((locale) => {setLocale(locale)});
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Localization',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      onGenerateRoute: CustomRouter.generatedRoute,
      initialRoute: homeRoute,
      locale: _locale,
    );
  }
}
