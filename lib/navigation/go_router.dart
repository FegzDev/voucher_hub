import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:voucher_hub/auth/domain/repository/auth_repository.dart';
import 'package:voucher_hub/navigation/route_paths.dart';

GoRouter? _router;

GoRouter createGoRouter(GetIt di) {
  _router ??= _createGoRouterInternal(di);
  return _router!;
}

class GoRouterRefreshStream extends ChangeNotifier {
  late final StreamSubscription<dynamic> _subscription;

  GoRouterRefreshStream(Stream<dynamic> stream) {
    notifyListeners();
    _subscription = stream.asBroadcastStream().listen((_) => notifyListeners());
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}

GoRouter _createGoRouterInternal(GetIt di) {
  AuthRepository repository = di();

  return GoRouter(
    initialLocation: RoutePaths.initial,
    refreshListenable: GoRouterRefreshStream(
      repository.getLocalAccessTokenStream(),
    ),
    redirect: (context, state) async {
      final authToken = await repository.getLocalAccessToken();
      final isLoggedIn = authToken != null;

      final isOnLoginScreen = state.matchedLocation == RoutePaths.login;
      final isOnInitialScreen = state.matchedLocation == RoutePaths.initial;

      if (isLoggedIn && isOnInitialScreen) {
        return RoutePaths.home;
      }

      if (!isLoggedIn && !isOnLoginScreen) {
        return RoutePaths.login;
      }

      return null;
    },
    routes: [
      GoRoute(
        path: RoutePaths.initial,
        builder: (context, state) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        },
      ),
    ],
  );
}
