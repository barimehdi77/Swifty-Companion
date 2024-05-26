// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProjectUserModel _$ProjectUserModelFromJson(Map<String, dynamic> json) =>
    ProjectUserModel(
      id: (json['id'] as num).toInt(),
      status: json['status'] as String,
      isValidated: json['validated?'] as bool?,
      finalMark: (json['final_mark'] as num?)?.toInt(),
      project: ProjectModel.fromJson(json['project'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProjectUserModelToJson(ProjectUserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'final_mark': instance.finalMark,
      'validated?': instance.isValidated,
      'project': instance.project,
    };
