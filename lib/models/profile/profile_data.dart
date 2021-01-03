library profile_data;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:the_process/enums/auth/authorization_step.dart';
import 'package:the_process/serializers.dart';

part 'profile_data.g.dart';

abstract class ProfileData implements Built<ProfileData, ProfileDataBuilder> {
  String get id;
  String? get displayName;
  String? get photoURL;
  String? get firstName;
  String? get lastName;
  AuthorizationStep get googleAuth;
  AuthorizationStep get asanaAuth;

  ProfileData._();

  factory ProfileData(
      {required String id,
      String displayName,
      String photoURL,
      String firstName,
      String lastName,
      required AuthorizationStep googleAuth,
      required AuthorizationStep asanaAuth}) = _$ProfileData._;

  factory ProfileData.by([void Function(ProfileDataBuilder) updates]) =
      _$ProfileData;

  Object toJson() => serializers.serializeWith(ProfileData.serializer, this);

  // static ProfileData fromJson(String jsonString) => serializers.deserializeWith(
  //     ProfileData.serializer, json.decode(jsonString));

  static Serializer<ProfileData> get serializer => _$profileDataSerializer;
}
