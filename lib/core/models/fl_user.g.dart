// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fl_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FlUser$Impl _$$FlUser$ImplFromJson(Map<String, dynamic> json) =>
    _$FlUser$Impl(
      id: json['id'] as String,
      email: json['email'] as String,
      image: json['image'] as String?,
      createdAt:
          const TimestampConverter().fromJson(json['createdAt'] as Timestamp),
      lastLoginAt:
          const TimestampConverter().fromJson(json['lastLoginAt'] as Timestamp),
      dictionaries: (json['dictionaries'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$FlUser$ImplToJson(_$FlUser$Impl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'image': instance.image,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
      'lastLoginAt': const TimestampConverter().toJson(instance.lastLoginAt),
      'dictionaries': instance.dictionaries,
    };
