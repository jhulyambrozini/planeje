import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      theme: ThemeData(
        textTheme: TextTheme(
          titleLarge: TextStyle(fontFamily: "Livvic"),
          titleMedium: TextStyle(fontFamily: "Livvic"),
          titleSmall: TextStyle(fontFamily: "Livvic"),
          bodyLarge: TextStyle(fontFamily: "Inter"),
          bodyMedium: TextStyle(fontFamily: "Inter"),
          bodySmall: TextStyle(fontFamily: "Inter"),
        ),
      ),
      supportedLocales: [
        Locale('pt', 'BR'), // Português do Brasil
      ],
      title: 'Planeje',

      routerConfig: Modular.routerConfig,
    ); //added by extension
  }
}
