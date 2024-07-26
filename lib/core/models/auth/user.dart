part of '../models.dart';

enum SupportedLanguages {
  ar('ar'),
  en('en');

  const SupportedLanguages(this.value);

  final String value;
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
    this.language = SupportedLanguages.ar,
  });

  // fromJson
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: (json['id'] ?? json['user']?['id']) as String?,
      accessToken: json['token'] as String?,
      refreshToken: json['refresh'] as String?,
      email: (json['email'] ?? json['user']?['email']) as String?,
      name: (json['name'] ?? json['user']?['name']) as String?,
      username: (json['userName'] ?? json['user']?['userName']) as String?,
      password: (json['password'] ?? json['user']?['password']) as String?,
      photoUrl: (json['imageUrl'] ?? json['user']?['imageUrl']) as String?,
      phoneNumber: (json['phone'] ?? json['user']?['phone']) as String?,
      language: SupportedLanguages
          .values[(json['language'] ?? json['user']?['language']) as int? ?? 0],
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
      if (photoUrl != null) 'imageUrl': photoUrl,
      if (phoneNumber != null) 'phone': phoneNumber,
      'language': language.index,
    };
  }
}
