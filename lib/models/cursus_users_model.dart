import 'package:json_annotation/json_annotation.dart';
import 'package:swifty_companion/models/cursus_model.dart';
import 'package:swifty_companion/models/skill_model.dart';

part 'cursus_users_model.g.dart';

@JsonSerializable()
class CursusUsersModel {
  final int id;
  @JsonKey(name: "cursus_id")
  final int cursusId;
  final String? grade;
  final double level;
  final List<SkillModel> skills;
  final CursusModel cursus;

  CursusUsersModel({
    required this.id,
    required this.cursusId,
    required this.grade,
    required this.level,
    required this.skills,
    required this.cursus,
  });

  factory CursusUsersModel.fromJson(Map<String, dynamic> json) =>
      _$CursusUsersModelFromJson(json);

  Map<String, dynamic> toJson() => _$CursusUsersModelToJson(this);
}
