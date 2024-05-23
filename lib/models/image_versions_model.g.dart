// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_versions_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImageVersionsModel _$ImageVersionsModelFromJson(Map<String, dynamic> json) =>
    ImageVersionsModel(
      large: json['large'] as String,
      medium: json['medium'] as String,
      micro: json['micro'] as String,
      small: json['small'] as String,
    );

Map<String, dynamic> _$ImageVersionsModelToJson(ImageVersionsModel instance) =>
    <String, dynamic>{
      'large': instance.large,
      'medium': instance.medium,
      'small': instance.small,
      'micro': instance.micro,
    };
