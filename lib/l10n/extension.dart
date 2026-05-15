import 'package:flutter/material.dart';
import 'package:voucher_hub/l10n/app_localizations.dart';

extension BuildContextAppLocalization on BuildContext {
  AppLocalizations get localizations => AppLocalizations.of(this)!;
}