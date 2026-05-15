import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:voucher_hub/auth/ui/bloc/auth_bloc.dart';
import 'package:voucher_hub/cart/ui/cart/cart_bloc.dart';
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
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(create: (_) => GetIt.instance()),
        BlocProvider<UserBloc>(create: (_) => GetIt.instance()),
        BlocProvider<CartBloc>(create: (_) => GetIt.instance()),
      ],
      child: MaterialApp.router(
        onGenerateTitle: (context) => context.localizations.appName,
        debugShowCheckedModeBanner: false,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.greenAccent)),
        routerConfig: createGoRouter(GetIt.instance),
      ),
    );
  }
}
