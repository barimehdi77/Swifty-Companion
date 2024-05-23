// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cursus_users_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CursusUsersModel _$CursusUsersModelFromJson(Map<String, dynamic> json) =>
    CursusUsersModel(
      id: (json['id'] as num).toInt(),
      cursusId: (json['cursus_id'] as num).toInt(),
      grade: json['grade'] as String?,
      level: (json['level'] as num).toDouble(),
      skills: (json['skills'] as List<dynamic>)
          .map((e) => SkillModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      cursus: CursusModel.fromJson(json['cursus'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CursusUsersModelToJson(CursusUsersModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cursus_id': instance.cursusId,
      'grade': instance.grade,
      'level': instance.level,
      'skills': instance.skills,
      'cursus': instance.cursus,
    };
