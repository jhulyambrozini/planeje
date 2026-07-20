import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:planeje/app_module.dart';
import 'package:planeje/app_widget.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  return runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}
