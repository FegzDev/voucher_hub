import 'package:intl/intl.dart';

final class AmountFormatter {
  AmountFormatter._();

  static String formatWithCurrency(String currency, double amount) {
    return '$currency ${format(amount)}';
  }

  static String format(double amount) {
    final formatter = amount % 1 == 0
        ? NumberFormat('#,##0', 'en_US')
        : NumberFormat('#,##0.00', 'en_US');

    return formatter.format(amount);
  }
}
