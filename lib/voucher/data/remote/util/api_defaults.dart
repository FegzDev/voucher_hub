final class VoucherApiDefaults {
  VoucherApiDefaults._();

  static const String vouchersUrl = 'vouchers';

  static String getVoucherUrl(int id) => '$vouchersUrl/$id';
}
