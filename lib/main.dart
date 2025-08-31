import 'package:flutter/material.dart';
import 'package:planeje/core/theme/colors.dart';
import 'package:planeje/core/utils/routes_utils.dart';
import 'package:planeje/views/auth_or_home_view.dart';
import 'package:planeje/views/home_view.dart';
import 'package:planeje/views/user_login_view.dart';
import 'package:planeje/views/user_register_view.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://seu-projeto.supabase.co',
    anonKey: 'sua-chave-anonima',
  );

  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const PlanejeApp());
}

class PlanejeApp extends StatelessWidget {
  const PlanejeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Planeje',
      theme: ThemeData(
        textTheme: TextTheme(
          titleLarge: TextStyle(fontFamily: "Livvic"),
          titleMedium: TextStyle(fontFamily: "Livvic"),
          titleSmall: TextStyle(fontFamily: "Livvic"),
          bodyLarge: TextStyle(fontFamily: "Inter"),
          bodyMedium: TextStyle(fontFamily: "Inter"),
          bodySmall: TextStyle(fontFamily: "Inter"),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: ColorsTheme.primary),
      ),
      routes: {
        RoutesUtils.home: (_) => HomeView(),
        RoutesUtils.authOrHome: (_) => AuthOrHomeView(),
        RoutesUtils.userLogin: (_) => UserLoginView(),
        RoutesUtils.userRegister: (_) => UserRegisterView(),
      },
    );
  }
}
