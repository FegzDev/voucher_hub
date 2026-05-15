import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:voucher_hub/auth/ui/bloc/auth_bloc.dart';
import 'package:voucher_hub/l10n/extension.dart';
import 'package:voucher_hub/navigation/route_paths.dart';
import 'package:voucher_hub/ui/screen_padding.dart';
import 'package:voucher_hub/ui/voucher_hub_button.dart';
import 'package:voucher_hub/user/domain/model/user.dart';
import 'package:voucher_hub/user/ui/bloc/user_bloc.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.localizations.profile)),
      body: ScreenPadding(
        child: BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            return state.maybeMap(
              authenticated: (state) =>
                  _authenticatedProfilePage(context, state.user),
              unauthenticated: (_) => _unauthenticatedProfilePage(context),
              orElse: () => _defaultProfilePage(context),
            );
          },
        ),
      ),
    );
  }

  Widget _authenticatedProfilePage(BuildContext context, User user) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: 24,
        children: [
          _titleText(context.localizations.profile),
          _userInfoContainer(context, user),
          _logoutButton(
            onConfirm: () {
              AuthBloc bloc = context.read();
              bloc.add(const AuthEvent.logout());
            },
            text: context.localizations.logout,
          ),
        ],
      ),
    );
  }

  Widget _titleText(String title) {
    return Text(
      title,
      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
    );
  }

  Widget _userInfoContainer(BuildContext context, User user) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        border: Border.all(),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        spacing: 16,
        children: [
          _userInfoItem(context.localizations.email, user.email),
          _userInfoItem(context.localizations.firstName, user.firstName),
          _userInfoItem(context.localizations.lastName, user.lastName),
        ],
      ),
    );
  }

  Widget _userInfoItem(String name, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      spacing: 16,
      children: [
        Flexible(
          flex: 4,
          child: Text(
            name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          ),
        ),
        Flexible(
          flex: 6,
          child: Text(
            value,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
          ),
        ),
      ],
    );
  }

  Widget _logoutButton({
    required VoidCallback onConfirm,
    required String text,
  }) {
    return VoucherHubButton(onPressed: onConfirm, child: Text(text));
  }

  Widget _unauthenticatedProfilePage(BuildContext context) {
    return Center(
      child: FilledButton(
        onPressed: () => context.go(RoutePaths.login),
        child: Text(context.localizations.login),
      ),
    );
  }

  Widget _defaultProfilePage(BuildContext context) {
    return Center(child: Text(context.localizations.profile));
  }
}
