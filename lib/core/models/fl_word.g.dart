// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fl_word.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FlWord$Impl _$$FlWord$ImplFromJson(Map<String, dynamic> json) =>
    _$FlWord$Impl(
      translations: (json['translations'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      description: json['description'] as String,
      title: json['title'] as String,
      id: json['id'] as String,
      repetitions: json['repetitions'] as int? ?? 0,
      createdAt:
          const TimestampConverter().fromJson(json['createdAt'] as Timestamp),
      isLearned: json['isLearned'] as bool? ?? false,
    );

Map<String, dynamic> _$$FlWord$ImplToJson(_$FlWord$Impl instance) =>
    <String, dynamic>{
      'translations': instance.translations,
      'description': instance.description,
      'title': instance.title,
      'id': instance.id,
      'repetitions': instance.repetitions,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
      'isLearned': instance.isLearned,
    };
