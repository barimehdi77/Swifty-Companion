import 'package:json_annotation/json_annotation.dart';
import 'package:swifty_companion/models/project_model.dart';

part 'project_user_model.g.dart';

@JsonSerializable()
class ProjectUserModel {
  final int id;
  final String status;
  @JsonKey(name: "final_mark")
  final int? finalMark;
  @JsonKey(name: "validated?")
  final bool? isValidated;
  final ProjectModel project;

  ProjectUserModel({
    required this.id,
    required this.status,
    required this.isValidated,
    required this.finalMark,
    required this.project,
  });

  factory ProjectUserModel.fromJson(Map<String, dynamic> json) =>
      _$ProjectUserModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProjectUserModelToJson(this);
}
