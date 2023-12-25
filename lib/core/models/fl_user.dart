import 'dart:core';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freelingo/core/models/fl_dictionary.dart';
import 'package:freelingo/utils/json_utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fl_user.freezed.dart';
part 'fl_user.g.dart';

@freezed
class FlUser with _$FlUser {
  const factory FlUser({
    required String id,
    required String email,
    required String? image,
    @TimestampConverter() required DateTime createdAt,
    @TimestampConverter() required DateTime lastLoginAt,
    @Default([]) List<String> dictionaries,
  }) = FlUser$;

  factory FlUser.fromJson(Map<String, dynamic> json) => _$FlUserFromJson(json);
}
