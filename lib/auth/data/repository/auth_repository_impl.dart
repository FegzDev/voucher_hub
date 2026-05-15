import 'package:fpdart/fpdart.dart';
import 'package:voucher_hub/auth/data/local/data_source/data_source.dart';
import 'package:voucher_hub/auth/data/remote/data_source/data_source.dart';
import 'package:voucher_hub/auth/data/remote/mapper/login_response.dart';
import 'package:voucher_hub/auth/domain/model/login_data.dart';
import 'package:voucher_hub/auth/domain/repository/auth_repository.dart';
import 'package:voucher_hub/error_handling/data/remote/mapper/error_response.dart';
import 'package:voucher_hub/error_handling/domain/model/error_data.dart';
import 'package:voucher_hub/user/data/remote/mapper/user_mapper.dart';
import 'package:voucher_hub/user/domain/repository/user_repository.dart';

final class AuthRepositoryImpl implements AuthRepository {
  final LocalAuthDataSource _localDataSource;
  final RemoteAuthDataSource _remoteDataSource;
  final UserRepository _userRepository;

  AuthRepositoryImpl({
    required LocalAuthDataSource localDataSource,
    required RemoteAuthDataSource remoteDataSource,
    required UserRepository userRepository,
  }) : _localDataSource = localDataSource,
       _remoteDataSource = remoteDataSource,
       _userRepository = userRepository;

  @override
  Stream<String?> getLocalAccessTokenStream() {
    return _localDataSource.getAccessTokenStream();
  }

  @override
  Future<String?> getLocalAccessToken() => _localDataSource.getAccessToken();

  @override
  Future<Either<ErrorData, LoginData>> login({
    required String email,
    required String password,
  }) async {
    final result = await _remoteDataSource.login(
      email: email,
      password: password,
    );

    return await result.fold<Future<Either<ErrorData, LoginData>>>(
      (error) async => Either.left(error.toDomain()),
      (data) async {
        await _localDataSource.insertAccessToken(data.accessToken);
        await _userRepository.insertLocalUser(data.user.toDomain());
        return Either.right(data.toDomain());
      },
    );
  }

  @override
  Future<void> deleteLocalAccessToken() => _localDataSource.deleteAccessToken();
}
