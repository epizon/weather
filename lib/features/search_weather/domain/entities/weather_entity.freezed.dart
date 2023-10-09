// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeatherEntity {
  List<ResultEntity> get results => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherEntityCopyWith<WeatherEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherEntityCopyWith<$Res> {
  factory $WeatherEntityCopyWith(
          WeatherEntity value, $Res Function(WeatherEntity) then) =
      _$WeatherEntityCopyWithImpl<$Res, WeatherEntity>;
  @useResult
  $Res call({List<ResultEntity> results});
}

/// @nodoc
class _$WeatherEntityCopyWithImpl<$Res, $Val extends WeatherEntity>
    implements $WeatherEntityCopyWith<$Res> {
  _$WeatherEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ResultEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherEntityImplCopyWith<$Res>
    implements $WeatherEntityCopyWith<$Res> {
  factory _$$WeatherEntityImplCopyWith(
          _$WeatherEntityImpl value, $Res Function(_$WeatherEntityImpl) then) =
      __$$WeatherEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ResultEntity> results});
}

/// @nodoc
class __$$WeatherEntityImplCopyWithImpl<$Res>
    extends _$WeatherEntityCopyWithImpl<$Res, _$WeatherEntityImpl>
    implements _$$WeatherEntityImplCopyWith<$Res> {
  __$$WeatherEntityImplCopyWithImpl(
      _$WeatherEntityImpl _value, $Res Function(_$WeatherEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_$WeatherEntityImpl(
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ResultEntity>,
    ));
  }
}

/// @nodoc

class _$WeatherEntityImpl implements _WeatherEntity {
  const _$WeatherEntityImpl({final List<ResultEntity> results = const []})
      : _results = results;

  final List<ResultEntity> _results;
  @override
  @JsonKey()
  List<ResultEntity> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'WeatherEntity(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherEntityImpl &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherEntityImplCopyWith<_$WeatherEntityImpl> get copyWith =>
      __$$WeatherEntityImplCopyWithImpl<_$WeatherEntityImpl>(this, _$identity);
}

abstract class _WeatherEntity implements WeatherEntity {
  const factory _WeatherEntity({final List<ResultEntity> results}) =
      _$WeatherEntityImpl;

  @override
  List<ResultEntity> get results;
  @override
  @JsonKey(ignore: true)
  _$$WeatherEntityImplCopyWith<_$WeatherEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ResultEntity {
  String? get name => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  String? get timezone => throw _privateConstructorUsedError;
  int? get population => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResultEntityCopyWith<ResultEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultEntityCopyWith<$Res> {
  factory $ResultEntityCopyWith(
          ResultEntity value, $Res Function(ResultEntity) then) =
      _$ResultEntityCopyWithImpl<$Res, ResultEntity>;
  @useResult
  $Res call(
      {String? name,
      double? latitude,
      double? longitude,
      String? timezone,
      int? population,
      String? country});
}

/// @nodoc
class _$ResultEntityCopyWithImpl<$Res, $Val extends ResultEntity>
    implements $ResultEntityCopyWith<$Res> {
  _$ResultEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? timezone = freezed,
    Object? population = freezed,
    Object? country = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      population: freezed == population
          ? _value.population
          : population // ignore: cast_nullable_to_non_nullable
              as int?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResultEntityImplCopyWith<$Res>
    implements $ResultEntityCopyWith<$Res> {
  factory _$$ResultEntityImplCopyWith(
          _$ResultEntityImpl value, $Res Function(_$ResultEntityImpl) then) =
      __$$ResultEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      double? latitude,
      double? longitude,
      String? timezone,
      int? population,
      String? country});
}

/// @nodoc
class __$$ResultEntityImplCopyWithImpl<$Res>
    extends _$ResultEntityCopyWithImpl<$Res, _$ResultEntityImpl>
    implements _$$ResultEntityImplCopyWith<$Res> {
  __$$ResultEntityImplCopyWithImpl(
      _$ResultEntityImpl _value, $Res Function(_$ResultEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? timezone = freezed,
    Object? population = freezed,
    Object? country = freezed,
  }) {
    return _then(_$ResultEntityImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      population: freezed == population
          ? _value.population
          : population // ignore: cast_nullable_to_non_nullable
              as int?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ResultEntityImpl implements _ResultEntity {
  const _$ResultEntityImpl(
      {this.name,
      this.latitude,
      this.longitude,
      this.timezone,
      this.population,
      this.country});

  @override
  final String? name;
  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  final String? timezone;
  @override
  final int? population;
  @override
  final String? country;

  @override
  String toString() {
    return 'ResultEntity(name: $name, latitude: $latitude, longitude: $longitude, timezone: $timezone, population: $population, country: $country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultEntityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.population, population) ||
                other.population == population) &&
            (identical(other.country, country) || other.country == country));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, latitude, longitude, timezone, population, country);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultEntityImplCopyWith<_$ResultEntityImpl> get copyWith =>
      __$$ResultEntityImplCopyWithImpl<_$ResultEntityImpl>(this, _$identity);
}

abstract class _ResultEntity implements ResultEntity {
  const factory _ResultEntity(
      {final String? name,
      final double? latitude,
      final double? longitude,
      final String? timezone,
      final int? population,
      final String? country}) = _$ResultEntityImpl;

  @override
  String? get name;
  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  String? get timezone;
  @override
  int? get population;
  @override
  String? get country;
  @override
  @JsonKey(ignore: true)
  _$$ResultEntityImplCopyWith<_$ResultEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
