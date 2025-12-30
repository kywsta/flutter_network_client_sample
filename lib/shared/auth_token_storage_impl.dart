import 'package:fresh_dio/fresh_dio.dart';

class AuthToken {
  final String accessToken;
  final String refreshToken;

  AuthToken({required this.accessToken, required this.refreshToken});
}

class AuthTokenStorageImpl implements TokenStorage<AuthToken> {
  const AuthTokenStorageImpl();

  @override
  Future<void> delete() {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<AuthToken?> read() {
    return Future.value(
      AuthToken(
        accessToken: "my_access_token",
        refreshToken: "my_refresh_token",
      ),
    );
  }

  @override
  Future<void> write(AuthToken token) {
    // TODO: implement write
    throw UnimplementedError();
  }
}
