import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:voucher_hub/auth/ui/login/login_bloc.dart';
import 'package:voucher_hub/auth/ui/widget/password_form_field.dart';
import 'package:voucher_hub/l10n/extension.dart';
import 'package:voucher_hub/navigation/route_paths.dart';
import 'package:voucher_hub/ui/button_progress_indicator.dart';
import 'package:voucher_hub/ui/screen_padding.dart';
import 'package:voucher_hub/ui/voucher_hub_button.dart';
import 'package:voucher_hub/ui/voucher_hub_text_form_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late final GlobalKey<FormState> _formKey;
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {
          state.maybeWhen(
            loading: () => _hideScaffoldMessenger(context),
            success: (_) => context.go(RoutePaths.home),
            failure: (data) {
              ScaffoldMessenger.of(
                context,
              ).showMaterialBanner(_errorMaterialBanner(data.message));
            },
            orElse: () {},
          );
        },
        child: Center(child: ScreenPadding(child: _loginForm())),
      ),
    );
  }

  MaterialBanner _errorMaterialBanner(String message) {
    return MaterialBanner(
      content: Text(message),
      actions: [
        TextButton(
          onPressed: () => _hideScaffoldMessenger(context),
          child: Text(context.localizations.dismiss),
        ),
      ],
    );
  }

  Widget _loginForm() {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _loginText(),
          const SizedBox(height: 8),
          _loginMessageText(),
          const SizedBox(height: 24),
          _emailTextFormField(),
          const SizedBox(height: 16),
          _passwordTextFormField(),
          const SizedBox(height: 32),
          _continueButton(),
        ],
      ),
    );
  }

  Widget _loginText() {
    return Text(
      context.localizations.login,
      style: const TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
    );
  }

  Widget _loginMessageText() {
    return Text(
      context.localizations.loginMessage,
      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w200),
    );
  }

  Widget _emailTextFormField() {
    return VoucherHubTextFormField(
      controller: _emailController,
      hintText: context.localizations.email,
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return context.localizations.blankEmail;
        }

        return null;
      },
    );
  }

  Widget _passwordTextFormField() {
    return PasswordFormField(
      controller: _passwordController,
      hintText: context.localizations.password,
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return context.localizations.blankPassword;
        }

        return null;
      },
    );
  }

  Widget _continueButton() {
    return ListenableBuilder(
      listenable: Listenable.merge([_emailController, _passwordController]),
      builder: (context, _) {
        LoginBloc bloc = context.watch();

        return VoucherHubButton(
          onPressed: bloc.state.maybeMap(
            loading: (_) => null,
            orElse: () {
              bool canSubmit =
                  _emailController.text.isNotEmpty &&
                  _passwordController.text.isNotEmpty;

              return canSubmit ? () => _submitForm() : null;
            },
          ),
          child: bloc.state.maybeMap(
            loading: (_) => const ButtonProgressIndicator(),
            orElse: () => Text(context.localizations.continueText),
          ),
        );
      },
    );
  }

  void _submitForm() {
    final isFormValid = _formKey.currentState?.validate();

    if (isFormValid == true) {
      LoginBloc bloc = context.read();

      bloc.add(
        LoginEvent.loginSubmitted(
          email: _emailController.text,
          password: _passwordController.text,
        ),
      );
    }
  }

  void _hideScaffoldMessenger(BuildContext context) {
    ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
  }

  @override
  void dispose() {
    _formKey.currentState?.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
