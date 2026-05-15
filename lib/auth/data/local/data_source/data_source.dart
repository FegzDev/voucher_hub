abstract interface class LocalAuthDataSource {
  Stream<String?> getAccessTokenStream();

  Future<String?> getAccessToken();

  Future<void> insertAccessToken(String token);

  Future<void> deleteAccessToken();
}
