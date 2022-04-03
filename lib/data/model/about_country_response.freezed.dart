part of 'about_country_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AboutCountryResponse _$AboutCountryResponseFromJson(Map<String, dynamic> json) {
  return _AboutCountryResponse.fromJson(json);
}

/// @nodoc
class _$AboutCountryResponseTearOff {
  const _$AboutCountryResponseTearOff();

  _AboutCountryResponse call({String? title, List<Rows>? rows}) {
    return _AboutCountryResponse(
      title: title,
      rows: rows,
    );
  }

  AboutCountryResponse fromJson(Map<String, Object?> json) {
    return AboutCountryResponse.fromJson(json);
  }
}

/// @nodoc
const $AboutCountryResponse = _$AboutCountryResponseTearOff();

/// @nodoc
mixin _$AboutCountryResponse {
  String? get title => throw _privateConstructorUsedError;

  List<Rows>? get rows => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AboutCountryResponseCopyWith<AboutCountryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AboutCountryResponseCopyWith<$Res> {
  factory $AboutCountryResponseCopyWith(AboutCountryResponse value,
          $Res Function(AboutCountryResponse) then) =
      _$AboutCountryResponseCopyWithImpl<$Res>;

  $Res call({String? title, List<Rows>? rows});
}

/// @nodoc
class _$AboutCountryResponseCopyWithImpl<$Res>
    implements $AboutCountryResponseCopyWith<$Res> {
  _$AboutCountryResponseCopyWithImpl(this._value, this._then);

  final AboutCountryResponse _value;

  // ignore: unused_field
  final $Res Function(AboutCountryResponse) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? rows = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      rows: rows == freezed
          ? _value.rows
          : rows // ignore: cast_nullable_to_non_nullable
              as List<Rows>?,
    ));
  }
}

/// @nodoc
abstract class _$AboutCountryResponseCopyWith<$Res>
    implements $AboutCountryResponseCopyWith<$Res> {
  factory _$AboutCountryResponseCopyWith(_AboutCountryResponse value,
          $Res Function(_AboutCountryResponse) then) =
      __$AboutCountryResponseCopyWithImpl<$Res>;

  @override
  $Res call({String? title, List<Rows>? rows});
}

/// @nodoc
class __$AboutCountryResponseCopyWithImpl<$Res>
    extends _$AboutCountryResponseCopyWithImpl<$Res>
    implements _$AboutCountryResponseCopyWith<$Res> {
  __$AboutCountryResponseCopyWithImpl(
      _AboutCountryResponse _value, $Res Function(_AboutCountryResponse) _then)
      : super(_value, (v) => _then(v as _AboutCountryResponse));

  @override
  _AboutCountryResponse get _value => super._value as _AboutCountryResponse;

  @override
  $Res call({
    Object? title = freezed,
    Object? rows = freezed,
  }) {
    return _then(_AboutCountryResponse(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      rows: rows == freezed
          ? _value.rows
          : rows // ignore: cast_nullable_to_non_nullable
              as List<Rows>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AboutCountryResponse implements _AboutCountryResponse {
  const _$_AboutCountryResponse({this.title, this.rows});

  factory _$_AboutCountryResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AboutCountryResponseFromJson(json);

  @override
  final String? title;
  @override
  final List<Rows>? rows;

  @override
  String toString() {
    return 'AboutCountryResponse(title: $title, rows: $rows)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AboutCountryResponse &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.rows, rows));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(rows));

  @JsonKey(ignore: true)
  @override
  _$AboutCountryResponseCopyWith<_AboutCountryResponse> get copyWith =>
      __$AboutCountryResponseCopyWithImpl<_AboutCountryResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AboutCountryResponseToJson(this);
  }
}

abstract class _AboutCountryResponse implements AboutCountryResponse {
  const factory _AboutCountryResponse({String? title, List<Rows>? rows}) =
      _$_AboutCountryResponse;

  factory _AboutCountryResponse.fromJson(Map<String, dynamic> json) =
      _$_AboutCountryResponse.fromJson;

  @override
  String? get title;

  @override
  List<Rows>? get rows;

  @override
  @JsonKey(ignore: true)
  _$AboutCountryResponseCopyWith<_AboutCountryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Rows _$RowsFromJson(Map<String, dynamic> json) {
  return _Rows.fromJson(json);
}

/// @nodoc
class _$RowsTearOff {
  const _$RowsTearOff();

  _Rows call({String? title, String? description, String? imageHref}) {
    return _Rows(
      title: title,
      description: description,
      imageHref: imageHref,
    );
  }

  Rows fromJson(Map<String, Object?> json) {
    return Rows.fromJson(json);
  }
}

/// @nodoc
const $Rows = _$RowsTearOff();

/// @nodoc
mixin _$Rows {
  String? get title => throw _privateConstructorUsedError;

  String? get description => throw _privateConstructorUsedError;

  String? get imageHref => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RowsCopyWith<Rows> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RowsCopyWith<$Res> {
  factory $RowsCopyWith(Rows value, $Res Function(Rows) then) =
      _$RowsCopyWithImpl<$Res>;

  $Res call({String? title, String? description, String? imageHref});
}

/// @nodoc
class _$RowsCopyWithImpl<$Res> implements $RowsCopyWith<$Res> {
  _$RowsCopyWithImpl(this._value, this._then);

  final Rows _value;

  // ignore: unused_field
  final $Res Function(Rows) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? imageHref = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imageHref: imageHref == freezed
          ? _value.imageHref
          : imageHref // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$RowsCopyWith<$Res> implements $RowsCopyWith<$Res> {
  factory _$RowsCopyWith(_Rows value, $Res Function(_Rows) then) =
      __$RowsCopyWithImpl<$Res>;

  @override
  $Res call({String? title, String? description, String? imageHref});
}

/// @nodoc
class __$RowsCopyWithImpl<$Res> extends _$RowsCopyWithImpl<$Res>
    implements _$RowsCopyWith<$Res> {
  __$RowsCopyWithImpl(_Rows _value, $Res Function(_Rows) _then)
      : super(_value, (v) => _then(v as _Rows));

  @override
  _Rows get _value => super._value as _Rows;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? imageHref = freezed,
  }) {
    return _then(_Rows(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imageHref: imageHref == freezed
          ? _value.imageHref
          : imageHref // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Rows implements _Rows {
  const _$_Rows({this.title, this.description, this.imageHref});

  factory _$_Rows.fromJson(Map<String, dynamic> json) => _$$_RowsFromJson(json);

  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? imageHref;

  @override
  String toString() {
    return 'Rows(title: $title, description: $description, imageHref: $imageHref)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Rows &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.imageHref, imageHref));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(imageHref));

  @JsonKey(ignore: true)
  @override
  _$RowsCopyWith<_Rows> get copyWith =>
      __$RowsCopyWithImpl<_Rows>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RowsToJson(this);
  }
}

abstract class _Rows implements Rows {
  const factory _Rows({String? title, String? description, String? imageHref}) =
      _$_Rows;

  factory _Rows.fromJson(Map<String, dynamic> json) = _$_Rows.fromJson;

  @override
  String? get title;

  @override
  String? get description;

  @override
  String? get imageHref;

  @override
  @JsonKey(ignore: true)
  _$RowsCopyWith<_Rows> get copyWith => throw _privateConstructorUsedError;
}
