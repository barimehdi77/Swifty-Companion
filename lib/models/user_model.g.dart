// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      id: (json['id'] as num).toInt(),
      login: json['login'] as String,
      url: json['url'] as String,
      kind: json['kind'] as String,
      displayname: json['displayname'] as String,
      correctionPoint: (json['correction_point'] as num).toInt(),
      wallet: (json['wallet'] as num).toInt(),
      image: UserImageModel.fromJson(json['image'] as Map<String, dynamic>),
      email: json['email'] as String,
      poolMonth: json['pool_month'] as String,
      poolYear: json['pool_year'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      anonymizeDate: json['anonymize_date'] as String,
      isAlumni: json['alumni?'] as bool,
      isActive: json['active?'] as bool,
      cursusUsers: (json['cursus_users'] as List<dynamic>)
          .map((e) => CursusUsersModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      achievements: (json['achievements'] as List<dynamic>)
          .map((e) => AchievementModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'id': instance.id,
      'login': instance.login,
      'email': instance.email,
      'displayname': instance.displayname,
      'url': instance.url,
      'kind': instance.kind,
      'wallet': instance.wallet,
      'correction_point': instance.correctionPoint,
      'image': instance.image,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'pool_month': instance.poolMonth,
      'pool_year': instance.poolYear,
      'anonymize_date': instance.anonymizeDate,
      'alumni?': instance.isAlumni,
      'active?': instance.isActive,
      'cursus_users': instance.cursusUsers,
      'achievements': instance.achievements,
    };
