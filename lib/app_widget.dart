import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:planeje/modules/core/presenter/theme/colors.dart';

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
        primaryColor: ColorsTheme.primary,

        appBarTheme: AppBarTheme(
          backgroundColor: ColorsTheme.background,
          iconTheme: IconThemeData(color: ColorsTheme.foreground),
          centerTitle: false,
          titleSpacing: 0,
          titleTextStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.white,
            fontFamily: 'Livvic',
          ),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: ColorsTheme.primary,
          elevation: 1,
          shape: CircleBorder(),
        ),
        scaffoldBackgroundColor: ColorsTheme.background,
      ),
      supportedLocales: [
        Locale('pt', 'BR'), // Português do Brasil
      ],
      title: 'Planeje',

      routerConfig: Modular.routerConfig,
    ); //added by extension
  }
}
