// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cursus_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CursusModel _$CursusModelFromJson(Map<String, dynamic> json) => CursusModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      kind: json['kind'] as String,
      slug: json['slug'] as String,
    );

Map<String, dynamic> _$CursusModelToJson(CursusModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'kind': instance.kind,
    };
