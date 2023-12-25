import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freelingo/core/models/fl_dictionary.dart';
import 'package:freelingo/core/models/fl_word.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@JsonSerializable(explicitToJson: true)
class TimestampConverter implements JsonConverter<DateTime, Timestamp> {
  const TimestampConverter();

  @override
  DateTime fromJson(Timestamp timestamp) {
    return timestamp.toDate();
  }

  @override
  Timestamp toJson(DateTime date) => Timestamp.fromDate(date);
}

@JsonSerializable(explicitToJson: true)
class DictionaryConverter
    implements JsonConverter<List<FlDictionary>, List<dynamic>> {
  const DictionaryConverter();

  @override
  List<Map<String, dynamic>> toJson(List<FlDictionary> dictionaries) =>
      dictionaries.map((dictionary) => dictionary.toJson()).toList();

  @override
  List<FlDictionary> fromJson(List<dynamic> dictionaries) {
    return dictionaries
        .map((dictionary) => FlDictionary.fromJson(dictionary))
        .toList();
  }
}

@JsonSerializable(explicitToJson: true)
class WordConverter implements JsonConverter<List<FlWord>, List<dynamic>> {
  const WordConverter();

  @override
  List<Map<String, dynamic>> toJson(List<FlWord> words) =>
      words.map((dictionary) => dictionary.toJson()).toList();

  @override
  List<FlWord> fromJson(List<dynamic> words) {
    return words.map((dictionary) => FlWord.fromJson(dictionary)).toList();
  }
}
