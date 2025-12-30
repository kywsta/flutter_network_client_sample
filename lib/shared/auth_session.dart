

class AuthSession {
  static final AuthSession _singleton = AuthSession._internal();

  factory AuthSession() {
    return _singleton;
  }

  AuthSession._internal();

  String? get authToken => "access_token"; // Get your actual token here
}
