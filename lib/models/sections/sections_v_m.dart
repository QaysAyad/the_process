import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_process/models/sections/new_section_v_m.dart';
import 'package:the_process/models/sections/section.dart';
import 'package:the_process/utils/immutable_collections/immutable_list.dart';

part 'sections_v_m.freezed.dart';
part 'sections_v_m.g.dart';

@freezed
class SectionsVM with _$SectionsVM {
  factory SectionsVM({
    required NewSectionVM newSection,
    required ImmutableList<Section> list,
    required bool creatingNewSection,
  }) = _SectionsVM;

  factory SectionsVM.fromJson(Map<String, dynamic> json) =>
      _$SectionsVMFromJson(json);

  factory SectionsVM.init() => SectionsVM(
      list: ImmutableList(),
      newSection: NewSectionVM(name: ''),
      creatingNewSection: false);
}
