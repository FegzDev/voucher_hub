import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:voucher_hub/di/di.dart';
import 'package:voucher_hub/l10n/app_localizations.dart';
import 'package:voucher_hub/l10n/extension.dart';
import 'package:voucher_hub/navigation/go_router.dart';
import 'package:voucher_hub/user/ui/bloc/user_bloc.dart';

void main() {
  configureDI(GetIt.instance);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      onGenerateTitle: (context) => context.localizations.appName,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.greenAccent)),
      routerConfig: createGoRouter(GetIt.instance),
      builder: (context, child) {
        return BlocProvider<UserBloc>(
          create: (_) => GetIt.instance(),
          child: Scaffold(body: child ?? const Center()),
        );
      },
    );
  }
}
