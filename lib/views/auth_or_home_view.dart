import 'package:flutter/material.dart';
import 'package:planeje/core/dependency_injector/dependency_injector.dart';
import 'package:planeje/viewmodels/home_or_auth_viewmodel.dart';
import 'package:planeje/views/home_view.dart';
import 'package:planeje/views/user_login_view.dart';

class AuthOrHomeView extends StatefulWidget {
  const AuthOrHomeView({super.key});

  @override
  State<AuthOrHomeView> createState() => _AuthOrHomeViewState();
}

class _AuthOrHomeViewState extends State<AuthOrHomeView> {
  final _di = DependencyInjectorImpl().instance;

  late final AuthOrHomeViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = _di.get<AuthOrHomeViewModel>();
    _viewModel.checkAuthentication();
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: _viewModel,
      builder: (context, _) {
        if (_viewModel.shouldGoToHomeScreen) {
          return HomeView();
        }
        return UserLoginView();
      },
    );
  }
}
