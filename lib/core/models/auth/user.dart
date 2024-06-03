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
    this.token,
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
      id: json['id'] as String?,
      token: json['token'] as String?,
      email: json['email'] as String?,
      name: json['name'] as String?,
      username: json['userName'] as String?,
      password: json['password'] as String?,
      photoUrl: json['photoUrl'] as String?,
      phoneNumber: json['phone'] as String?,
      language: SupportedLanguages.values[json['language'] as int? ?? 0],
    );
  }

  final String? id;
  final String? token;
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
      if (token != null) 'token': token,
      if (name != null) 'name': name,
      if (username != null) 'username': username,
      if (password != null) 'password': password,
      if (email != null) 'email': email,
      if (photoUrl != null) 'photoUrl': photoUrl,
      if (phoneNumber != null) 'phone': phoneNumber,
      'language': language.index,
    };
  }
}
