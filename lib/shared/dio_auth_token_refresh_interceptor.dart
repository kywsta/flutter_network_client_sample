import 'package:flutter_network_client_sample/shared/auth_token_storage_impl.dart';
import 'package:fresh_dio/fresh_dio.dart';

/// Interceptor that handles token refresh when receiving 401 unauthorized responses
class DioAuthTokenRefreshInterceptor {
  final TokenStorage<AuthToken> _tokenStorage;

  /// Creates a new TokenRefreshInterceptor with the given token storage
  DioAuthTokenRefreshInterceptor(this._tokenStorage);

  /// Get Fresh interceptor configured for token management
  Fresh<AuthToken> get fresh => Fresh<AuthToken>(
    tokenStorage: _tokenStorage,
    tokenHeader: (token) {
      // This function is called for every request to add the token to headers
      return {'Authorization': 'Bearer ${token.accessToken}'};
    },
    refreshToken: (token, client) async {
      // This function is called when a 401 error is received
      try {
        final response = await client.post(
          '/auth/refresh',
          data: {
            'refreshToken': token!.refreshToken,
            'accessToken': token.accessToken,
          },
        );

        final newTokens = response.data;
        return AuthToken(
          accessToken: newTokens['accessToken'],
          refreshToken: newTokens['refreshToken'],
        );
      } catch (e) {
        // If refresh fails, throw to trigger logout
        throw RevokeTokenException();
      }
    },
    shouldRefresh: (response) {
      // Determine if we should attempt a token refresh
      return response?.statusCode == 401;
    },
  );
}
