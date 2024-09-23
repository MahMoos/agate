part of '../models.dart';

enum SupportedLanguages {
  ar('ar'),
  en('en');

  const SupportedLanguages(this.value);

  final String value;
}

enum AcademicStage { first, second, third, fourth, fifth, sixth }

enum Governorate {
  alAnbar,
  babil,
  baghdad,
  basra,
  dhiQar,
  alQadisiyyah,
  diyala,
  duhok,
  erbil,
  karbala,
  kirkuk,
  maysan,
  muthanna,
  najaf,
  ninawa,
  salahAlDin,
  sulaymaniyah,
  wasit;
}

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
    this.governorate,
    this.address,
    this.birthday,
    this.universityId,
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
      universityId: info['universityId'] as String?,
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
      governorate: Governorate.values.firstWhereOrNull(
        (e) =>
            e.name ==
            (info['data'] as List<dynamic>?)?.firstWhereOrNull(
              (e) => e['key'] == 'governorate',
            )?['stringValue'] as String?,
      ),
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
  final Governorate? governorate;
  final String? address;
  final String? universityId;
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
      if (universityId != null) 'universityId': universityId,
      'data': [
        if (telegramUsername != null)
          {
            'key': 'telegram',
            'stringValue': telegramUsername,
          },
        if (governorate != null)
          {
            'key': 'governorate',
            'stringValue': governorate!.name,
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
