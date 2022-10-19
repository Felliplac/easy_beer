import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'freezed_classes.freezed.dart';

part 'freezed_classes.g.dart';

@freezed
abstract class BeerApi with _$BeerApi {
  const factory BeerApi(
  final int id,
  final String name,
  final String tagline,
  final String description,
  final String image_url,
  ) =_BeerApi;
  
  factory BeerApi.fromJson(Map<String, Object?> json) => _$BeerApiFromJson(json);
}