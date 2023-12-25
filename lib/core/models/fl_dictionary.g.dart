// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fl_dictionary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FlDictionary$Impl _$$FlDictionary$ImplFromJson(Map<String, dynamic> json) =>
    _$FlDictionary$Impl(
      name: json['name'] as String,
      id: json['id'] as String,
      words: const WordConverter().fromJson(json['words'] as List),
      createdAt:
          const TimestampConverter().fromJson(json['createdAt'] as Timestamp),
      lastUpdatedAt: const TimestampConverter()
          .fromJson(json['lastUpdatedAt'] as Timestamp),
    );

Map<String, dynamic> _$$FlDictionary$ImplToJson(_$FlDictionary$Impl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'words': const WordConverter().toJson(instance.words),
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
      'lastUpdatedAt':
          const TimestampConverter().toJson(instance.lastUpdatedAt),
    };
