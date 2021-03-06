import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_process/enums/settings/theme_brightness.dart';
import 'package:the_process/models/settings/theme_colors.dart';

part 'theme_set.freezed.dart';
part 'theme_set.g.dart';

@freezed
class ThemeSet with _$ThemeSet {
  factory ThemeSet({
    required ThemeColors colors,
    required ThemeBrightness brightness,
  }) = _ThemeSet;

  factory ThemeSet.fromJson(Map<String, dynamic> json) =>
      _$ThemeSetFromJson(json);
}

// library theme_set;

// import 'package:built_value/built_value.dart';
// import 'package:built_value/serializer.dart';
// import 'package:the_process/enums/settings/theme_brightness.dart';
// import 'package:the_process/models/settings/theme_colors.dart';
// import 'package:the_process/serializers.dart';

// part 'theme_set.g.dart';

// abstract class ThemeSet implements Built<ThemeSet, ThemeSetBuilder> {
//   ThemeColors get colors;
//   ThemeBrightness get brightness;

//   ThemeSet._();

//   factory ThemeSet([void Function(ThemeSetBuilder) updates]) = _$ThemeSet;

//   Object toJson() => serializers.serializeWith(ThemeSet.serializer, this);

//   // static ThemeSet fromJson(String jsonString) =>
//   //     serializers.deserializeWith(ThemeSet.serializer, json.decode(jsonString));

//   static Serializer<ThemeSet> get serializer => _$themeSetSerializer;
// }
