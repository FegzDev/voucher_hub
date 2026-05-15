import 'package:voucher_hub/user/data/remote/response/user_response.dart';
import 'package:voucher_hub/user/domain/model/user.dart';

extension UserResponseMapper on UserResponse {
  User toDomain() {
    return User(id: id, email: email, firstName: firstName, lastName: lastName);
  }
}
