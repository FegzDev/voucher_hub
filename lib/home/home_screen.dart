import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:voucher_hub/l10n/extension.dart';
import 'package:voucher_hub/navigation/route_paths.dart';
import 'package:voucher_hub/user/ui/bloc/user_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: const Placeholder(),
    );
  }

  PreferredSizeWidget _appBar(BuildContext context) {
    return AppBar(
      title: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          final firstName = state.maybeMap(
            authenticated: (state) => state.user.firstName,
            orElse: () => '',
          );

          return Text(context.localizations.hiTemplate(firstName));
        },
      ),
      centerTitle: false,
      actions: [
        IconButton(
          onPressed: () => context.push(RoutePaths.cart),
          tooltip: context.localizations.cart,
          icon: const Icon(Icons.shopping_cart_outlined),
        ),
        IconButton(
          onPressed: () => context.push(RoutePaths.voucherList),
          tooltip: context.localizations.vouchers,
          icon: const Icon(Icons.shopping_bag_outlined),
        ),
        IconButton(
          onPressed: () => context.push(RoutePaths.profile),
          tooltip: context.localizations.profile,
          icon: const Icon(Icons.account_circle_outlined),
        ),
      ],
    );
  }
}
