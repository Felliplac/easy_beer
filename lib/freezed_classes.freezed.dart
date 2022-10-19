// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'freezed_classes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BeerApi _$BeerApiFromJson(Map<String, dynamic> json) {
  return _BeerApi.fromJson(json);
}

/// @nodoc
mixin _$BeerApi {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get tagline => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get image_url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BeerApiCopyWith<BeerApi> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeerApiCopyWith<$Res> {
  factory $BeerApiCopyWith(BeerApi value, $Res Function(BeerApi) then) =
      _$BeerApiCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      String tagline,
      String description,
      String image_url});
}

/// @nodoc
class _$BeerApiCopyWithImpl<$Res> implements $BeerApiCopyWith<$Res> {
  _$BeerApiCopyWithImpl(this._value, this._then);

  final BeerApi _value;
  // ignore: unused_field
  final $Res Function(BeerApi) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? tagline = freezed,
    Object? description = freezed,
    Object? image_url = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tagline: tagline == freezed
          ? _value.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image_url: image_url == freezed
          ? _value.image_url
          : image_url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_BeerApiCopyWith<$Res> implements $BeerApiCopyWith<$Res> {
  factory _$$_BeerApiCopyWith(
          _$_BeerApi value, $Res Function(_$_BeerApi) then) =
      __$$_BeerApiCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      String tagline,
      String description,
      String image_url});
}

/// @nodoc
class __$$_BeerApiCopyWithImpl<$Res> extends _$BeerApiCopyWithImpl<$Res>
    implements _$$_BeerApiCopyWith<$Res> {
  __$$_BeerApiCopyWithImpl(_$_BeerApi _value, $Res Function(_$_BeerApi) _then)
      : super(_value, (v) => _then(v as _$_BeerApi));

  @override
  _$_BeerApi get _value => super._value as _$_BeerApi;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? tagline = freezed,
    Object? description = freezed,
    Object? image_url = freezed,
  }) {
    return _then(_$_BeerApi(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tagline == freezed
          ? _value.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String,
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image_url == freezed
          ? _value.image_url
          : image_url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BeerApi with DiagnosticableTreeMixin implements _BeerApi {
  const _$_BeerApi(
      this.id, this.name, this.tagline, this.description, this.image_url);

  factory _$_BeerApi.fromJson(Map<String, dynamic> json) =>
      _$$_BeerApiFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String tagline;
  @override
  final String description;
  @override
  final String image_url;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BeerApi(id: $id, name: $name, tagline: $tagline, description: $description, image_url: $image_url)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BeerApi'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('tagline', tagline))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('image_url', image_url));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BeerApi &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.tagline, tagline) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.image_url, image_url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(tagline),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(image_url));

  @JsonKey(ignore: true)
  @override
  _$$_BeerApiCopyWith<_$_BeerApi> get copyWith =>
      __$$_BeerApiCopyWithImpl<_$_BeerApi>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BeerApiToJson(
      this,
    );
  }
}

abstract class _BeerApi implements BeerApi {
  const factory _BeerApi(final int id, final String name, final String tagline,
      final String description, final String image_url) = _$_BeerApi;

  factory _BeerApi.fromJson(Map<String, dynamic> json) = _$_BeerApi.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get tagline;
  @override
  String get description;
  @override
  String get image_url;
  @override
  @JsonKey(ignore: true)
  _$$_BeerApiCopyWith<_$_BeerApi> get copyWith =>
      throw _privateConstructorUsedError;
}
