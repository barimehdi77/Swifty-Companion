// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'achievement_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AchievementModel _$AchievementModelFromJson(Map<String, dynamic> json) =>
    AchievementModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      tier: json['tier'] as String,
      image: json['image'] as String,
      visible: json['visible'] as bool,
      nbrOfSuccess: (json['nbr_of_success'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AchievementModelToJson(AchievementModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'tier': instance.tier,
      'image': instance.image,
      'nbr_of_success': instance.nbrOfSuccess,
      'visible': instance.visible,
    };
