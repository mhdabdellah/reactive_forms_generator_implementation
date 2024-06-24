// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      nickname: json['nickname'] as String,
      email: json['email'] as String,
      comment: json['comment'] as String,
      gender: json['gender'] as String,
      birthDate: DateTime.parse(json['birthDate'] as String),
      termsAccepted: json['termsAccepted'] as bool,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'nickname': instance.nickname,
      'email': instance.email,
      'comment': instance.comment,
      'gender': instance.gender,
      'birthDate': instance.birthDate.toIso8601String(),
      'termsAccepted': instance.termsAccepted,
    };
