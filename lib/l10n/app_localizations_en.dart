// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'Voucher Hub';

  @override
  String get login => 'Login';

  @override
  String get loginMessage => 'Welcome back, we\'ve missed you!';

  @override
  String get email => 'Email';

  @override
  String get blankEmail => 'Email is blank';

  @override
  String get password => 'Password';

  @override
  String get blankPassword => 'Password is blank';

  @override
  String get dismiss => 'Dismiss';

  @override
  String get continueText => 'Continue';

  @override
  String hiTemplate(Object name) {
    return 'Hi, $name';
  }

  @override
  String get cart => 'Cart';

  @override
  String get vouchers => 'Vouchers';

  @override
  String get profile => 'Profile';

  @override
  String get products => 'Products';

  @override
  String productImageLabelTemplate(Object product) {
    return '$product Image';
  }

  @override
  String get noProducts => 'No Products';

  @override
  String get product => 'Product';

  @override
  String get redemptionDetails => 'Redemption Details';

  @override
  String get amount => 'Amount';

  @override
  String get quantity => 'Quantity';

  @override
  String get addToCart => 'Add To Cart';

  @override
  String get addedToCart => 'Added To Cart';

  @override
  String get noCartItems => 'No Cart Items';

  @override
  String get checkout => 'Checkout';

  @override
  String get subtotal => 'Subtotal';

  @override
  String get fees => 'Fees';

  @override
  String get total => 'Total';

  @override
  String get confirm => 'Confirm';

  @override
  String get reference => 'Reference';

  @override
  String get done => 'Done';

  @override
  String get noVouchers => 'No Vouchers';

  @override
  String get voucher => 'Voucher';

  @override
  String get code => 'Code';

  @override
  String get pin => 'Pin';

  @override
  String get serialNumber => 'Serial Number';

  @override
  String get expiryDate => 'Expiry Date';

  @override
  String get firstName => 'First Name';

  @override
  String get lastName => 'Last Name';

  @override
  String get logout => 'Logout';
}
