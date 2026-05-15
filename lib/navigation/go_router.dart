import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:voucher_hub/auth/domain/repository/auth_repository.dart';
import 'package:voucher_hub/auth/ui/login/login_bloc.dart';
import 'package:voucher_hub/auth/ui/login/login_screen.dart';
import 'package:voucher_hub/cart/ui/add_item/add_cart_item_bloc.dart';
import 'package:voucher_hub/cart/ui/cart/cart_bloc.dart';
import 'package:voucher_hub/cart/ui/cart/cart_screen.dart';
import 'package:voucher_hub/home/home_screen.dart';
import 'package:voucher_hub/navigation/route_paths.dart';
import 'package:voucher_hub/product/ui/catalogue/product_catalogue_bloc.dart';
import 'package:voucher_hub/product/ui/details/product_details_bloc.dart';
import 'package:voucher_hub/product/ui/details/product_details_screen.dart';
import 'package:voucher_hub/user/ui/profile/profile_screen.dart';
import 'package:voucher_hub/voucher/ui/details/voucher_details_bloc.dart';
import 'package:voucher_hub/voucher/ui/details/voucher_details_screen.dart';
import 'package:voucher_hub/voucher/ui/list/voucher_list_bloc.dart';
import 'package:voucher_hub/voucher/ui/list/voucher_list_screen.dart';

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
      GoRoute(
        path: RoutePaths.login,
        builder: (context, state) => BlocProvider(
          create: (context) => di<LoginBloc>(),
          child: const LoginScreen(),
        ),
      ),
      GoRoute(
        path: RoutePaths.home,
        builder: (context, state) => BlocProvider(
          create: (context) => di<ProductCatalogueBloc>(),
          child: const HomeScreen(),
        ),
      ),
      GoRoute(
        path: RoutePaths.productDetails,
        builder: (context, state) => MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => di<ProductDetailsBloc>(param1: state.extra),
            ),
            BlocProvider(create: (context) => di<AddCartItemBloc>()),
          ],
          child: const ProductDetailsScreen(),
        ),
      ),
      GoRoute(
        path: RoutePaths.cart,
        builder: (context, state) => BlocProvider(
          create: (context) => di<CartBloc>(),
          child: const CartScreen(),
        ),
      ),
      GoRoute(
        path: RoutePaths.voucherList,
        builder: (context, state) => BlocProvider(
          create: (context) => di<VoucherListBloc>(),
          child: const VoucherListScreen(),
        ),
      ),
      GoRoute(
        path: RoutePaths.voucherDetails,
        builder: (context, state) => BlocProvider(
          create: (context) => di<VoucherDetailsBloc>(param1: state.extra),
          child: const VoucherDetailsScreen(),
        ),
      ),
      GoRoute(
        path: RoutePaths.profile,
        builder: (context, state) => const ProfileScreen(),
      ),
    ],
  );
}
