import 'package:json_annotation/json_annotation.dart';

part 'project_model.g.dart';

@JsonSerializable()
class ProjectModel {
  final int id;
  final String name;
  final String slug;
  @JsonKey(name: "parent_id")
  final int? parentId;

  ProjectModel({
    required this.id,
    required this.name,
    required this.slug,
    this.parentId,
  });

  factory ProjectModel.fromJson(Map<String, dynamic> json) =>
      _$ProjectModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProjectModelToJson(this);
}
