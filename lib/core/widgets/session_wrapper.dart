import 'package:abstracta_to_dos/config/di/injection.dart';
import 'package:abstracta_to_dos/config/style/app_colors.dart';
import 'package:abstracta_to_dos/core/connectivity/connectivity_check_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SessionWrapper extends StatelessWidget {
  const SessionWrapper({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SessionShellMainView(child: child);
  }
}

class SessionShellMainView extends StatelessWidget {
  const SessionShellMainView({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocListener<ConnectivityCheckBloc, ConnectivityCheckState>(
      bloc: getIt<ConnectivityCheckBloc>(),
      listenWhen: (previous, current) {
        return previous != current && current is ConnectedConnectivityCheckState;
      },
      listener: (context, connectivityState) {
        // Handle connectivity state changes
      },
      child: Scaffold(
        backgroundColor: Theme.of(context).extension<ThemeCustomColors>()?.background,
        body: child,
        resizeToAvoidBottomInset: false,
      ),
    );
  }
}
