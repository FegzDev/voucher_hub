import 'package:voucher_hub/error_handling/data/remote/response/error_response.dart';
import 'package:voucher_hub/error_handling/domain/model/error_data.dart';

extension ErrorResponseMapper on ErrorResponse {
  ErrorData toDomain() => ErrorData(error: error, message: message);
}
