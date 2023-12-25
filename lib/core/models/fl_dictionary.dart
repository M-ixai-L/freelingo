import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freelingo/core/models/fl_word.dart';
import 'package:freelingo/utils/json_utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fl_dictionary.freezed.dart';
part 'fl_dictionary.g.dart';

@freezed
class FlDictionary with _$FlDictionary {
  const factory FlDictionary({
    required String name,
    required String id,
    @WordConverter() required List<FlWord> words,
    @TimestampConverter() required DateTime createdAt,
    @TimestampConverter() required DateTime lastUpdatedAt,
  }) = FlDictionary$;

  factory FlDictionary.fromJson(Map<String, dynamic> json) =>
      _$FlDictionaryFromJson(json);
}
