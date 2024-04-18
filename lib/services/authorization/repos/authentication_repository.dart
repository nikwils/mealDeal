import 'dart:async';

import 'package:diet/data/db.dart';
import 'package:diet/data/models/user.dart';
import 'package:diet/services/authorization/service/local_authentication_service.dart';

enum AuthenticationStatus { unknown, authenticatedAnna, authenticatedElena, unauthenticated }

class AuthenticationRepository {
  AuthenticationRepository._();
  static final _controller = StreamController<AuthenticationStatus>();

  static Stream<AuthenticationStatus> get status async* {
    try {
      final String? refreshToken = await _checkTokenLocally();

      if (refreshToken != null && refreshToken != '') {
        if (refreshToken == 'dina') {
          yield AuthenticationStatus.authenticatedAnna;
        } else {
          yield AuthenticationStatus.authenticatedElena;
        }
        yield* _controller.stream;
      } else {
        yield AuthenticationStatus.unauthenticated;
        yield* _controller.stream;
      }
    } catch (e) {
      yield AuthenticationStatus.unauthenticated;
      yield* _controller.stream;
      rethrow;
    }
  }

  static Future<String?> _checkTokenLocally() async {
    return LocalAuthenticationService().checkToken();
  }

  static Future<void> logIn({
    required String username,
    required String userPassword,
  }) async {
    try {
      final response =
          DataBase.users.any((User user) => user.password == userPassword && user.username == username);

      if (response) {
        await _saveToken(token: username);

        if (username == 'dina') {
          _controller.add(AuthenticationStatus.authenticatedAnna);
        } else {
          _controller.add(AuthenticationStatus.authenticatedElena);
        }
      }
    } on Exception {
      rethrow;
    }
  }

  static Future<void> _saveToken({required final String token}) async {
    await LocalAuthenticationService().saveToken(token);
  }

  /// Выход из приложения и удаление токена.
  static Future<void> logOut() async {
    await LocalAuthenticationService().dropToken();
    _controller.add(AuthenticationStatus.unauthenticated);
  }

  void dispose() => _controller.close();
}
