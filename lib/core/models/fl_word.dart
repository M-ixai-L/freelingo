import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freelingo/utils/json_utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fl_word.freezed.dart';
part 'fl_word.g.dart';

@freezed
class FlWord with _$FlWord {
  const factory FlWord({
    required List<String> translations,
    required String description,
    required String title,
    required String id,
    @Default(0) int repetitions,
    @TimestampConverter() required DateTime createdAt,
    @Default(false) bool isLearned,
  }) = FlWord$;

  factory FlWord.fromJson(Map<String, dynamic> json) => _$FlWordFromJson(json);
}
