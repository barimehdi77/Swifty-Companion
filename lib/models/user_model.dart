import 'package:json_annotation/json_annotation.dart';
import 'package:swifty_companion/models/cursus_users_model.dart';
import 'package:swifty_companion/models/user_image_model.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  final int id;
  final String login;
  final String email;
  final String displayname;
  final String url;
  final String kind;
  final int wallet;
  @JsonKey(name: 'correction_point')
  final int correctionPoint;
  final UserImageModel image;
  @JsonKey(name: 'first_name')
  final String firstName;
  @JsonKey(name: 'last_name')
  final String lastName;
  @JsonKey(name: 'pool_month')
  final String poolMonth;
  @JsonKey(name: 'pool_year')
  final String poolYear;
  @JsonKey(name: 'anonymize_date')
  final String anonymizeDate;
  @JsonKey(name: 'alumni?')
  final bool isAlumni;
  @JsonKey(name: 'active?')
  final bool isActive;
  @JsonKey(name: 'cursus_users')
  final List<CursusUsersModel> cursusUsers;

  UserModel({
    required this.id,
    required this.login,
    required this.url,
    required this.kind,
    required this.displayname,
    required this.correctionPoint,
    required this.wallet,
    required this.image,
    required this.email,
    required this.poolMonth,
    required this.poolYear,
    required this.firstName,
    required this.lastName,
    required this.anonymizeDate,
    required this.isAlumni,
    required this.isActive,
    required this.cursusUsers,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
