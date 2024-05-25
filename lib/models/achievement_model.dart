import 'package:json_annotation/json_annotation.dart';

part 'achievement_model.g.dart';

@JsonSerializable()
class AchievementModel {
  final int id;
  final String name;
  final String description;
  final String tier;
  final String image;
  @JsonKey(name: "nbr_of_success")
  final int? nbrOfSuccess;
  final bool visible;

  AchievementModel({
    required this.id,
    required this.name,
    required this.description,
    required this.tier,
    required this.image,
    required this.visible,
    this.nbrOfSuccess,
  });

  factory AchievementModel.fromJson(Map<String, dynamic> json) =>
      _$AchievementModelFromJson(json);

  Map<String, dynamic> toJson() => _$AchievementModelToJson(this);
}
