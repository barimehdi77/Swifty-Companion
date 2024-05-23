// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserImageModel _$UserImageModelFromJson(Map<String, dynamic> json) =>
    UserImageModel(
      link: json['link'] as String,
      versions:
          ImageVersionsModel.fromJson(json['versions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserImageModelToJson(UserImageModel instance) =>
    <String, dynamic>{
      'link': instance.link,
      'versions': instance.versions,
    };
