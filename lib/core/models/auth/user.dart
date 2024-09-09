part of '../models.dart';

enum SupportedLanguages {
  ar('ar'),
  en('en');

  const SupportedLanguages(this.value);

  final String value;
}

enum AcademicStage { first, second, third, fourth, fifth, sixth }

class User {
  const User({
    this.id,
    this.accessToken,
    this.refreshToken,
    this.email,
    this.name,
    this.username,
    this.password,
    this.photoUrl,
    this.phoneNumber,
    this.telegramUsername,
    this.address,
    this.birthday,
    this.stage = AcademicStage.first,
    this.language = SupportedLanguages.ar,
  });

  // fromJson
  factory User.fromJson(Map<String, dynamic> json) {
    final info = (json['user'] ?? json) as Map<String, dynamic>;
    return User(
      id: info['id'] as String?,
      accessToken: json['token'] as String?,
      refreshToken: json['refresh'] as String?,
      email: info['email'] as String?,
      name: info['name'] as String?,
      username: (info['username'] ?? info['userName']) as String?,
      password: info['password'] as String?,
      photoUrl: info['imageUrl'] as String?,
      phoneNumber: info['phone'] as String?,
      telegramUsername: (info['data'] as List<dynamic>?)
              ?.firstWhereOrNull((e) => e['key'] == 'telegram')?['stringValue']
          as String?,
      birthday: DateTime.tryParse(
        (info['data'] as List<dynamic>?)?.firstWhereOrNull(
              (e) => e['key'] == 'birthday',
            )?['stringValue'] as String? ??
            '',
      ),
      address: (info['data'] as List<dynamic>?)
              ?.firstWhereOrNull((e) => e['key'] == 'address')?['stringValue']
          as String?,
      stage: AcademicStage.values.firstWhereOrNull(
            (e) =>
                e.name ==
                (info['data'] as List<dynamic>?)?.firstWhereOrNull(
                  (e) => e['key'] == 'stage',
                )?['stringValue'] as String?,
          ) ??
          AcademicStage.first,
      language: SupportedLanguages.values[info['language'] as int? ?? 0],
    );
  }

  final String? id;
  final String? accessToken;
  final String? refreshToken;
  final String? name;
  final String? username;
  final String? password;
  final String? email;
  final String? photoUrl;
  final String? phoneNumber;
  final String? telegramUsername;
  final DateTime? birthday;
  final String? address;
  final AcademicStage stage;
  final SupportedLanguages language;

  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (accessToken != null) 'token': accessToken,
      if (refreshToken != null) 'refresh': refreshToken,
      if (name != null) 'name': name,
      if (username != null) 'username': username,
      if (password != null) 'password': password,
      if (email != null) 'email': email,
      if (photoUrl != null) 'imageId': photoUrl,
      if (phoneNumber != null) 'phone': phoneNumber,
      'data': [
        if (telegramUsername != null)
          {
            'key': 'telegram',
            'stringValue': telegramUsername,
          },
        if (address != null)
          {
            'key': 'address',
            'stringValue': address,
          },
        if (birthday != null)
          {
            'key': 'birthday',
            'stringValue': birthday!.toIso8601String(),
          },
        {
          'key': 'stage',
          'stringValue': stage.name,
        },
      ],
      'language': language.index,
    };
  }
}
