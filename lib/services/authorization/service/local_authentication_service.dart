import 'dart:async';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// Service [LocalAuthenticationService].
class LocalAuthenticationService {
  final FlutterSecureStorage storages = const FlutterSecureStorage();

  final String accessTokenKey = 'access_token';

  /// Сохранение токена и ключа для простого входа в приложение и отправки/получения данных с бэка.
  Future<void> saveToken(final String token) async {
    await _saveForKey(key: accessTokenKey, value: token);
  }

  /// Удаляем jwt токен с устройства
  Future<void> dropToken() async {
    await storages.delete(key: accessTokenKey);
  }

  /// Сохраняем jwt токен на устройстве
  Future<void> _saveForKey({
    required final String key,
    required final String value,
  }) async {
    await storages.write(key: key, value: value);
  }

  /// Получаем данные со storage по нужному ключу.
  Future<String?> readKey({
    required final String key,
  }) async {
    return await storages.read(key: key);
  }

  /// Проверка на наличие токена  и на его корректность при запуске приложения.
  Future<String?> checkToken() async {
    final String? refreshTokenString = await storages.read(key: accessTokenKey);
    if (refreshTokenString != null) {
      return refreshTokenString;
    } else {
      return null;
    }
  }
}
