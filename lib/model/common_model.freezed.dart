// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'common_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommonModel _$CommonModelFromJson(Map<String, dynamic> json) {
  return _CommonModel.fromJson(json);
}

/// @nodoc
mixin _$CommonModel {
  int get code => throw _privateConstructorUsedError;
  List<UserModel> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommonModelCopyWith<CommonModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonModelCopyWith<$Res> {
  factory $CommonModelCopyWith(
          CommonModel value, $Res Function(CommonModel) then) =
      _$CommonModelCopyWithImpl<$Res>;
  $Res call({int code, List<UserModel> data});
}

/// @nodoc
class _$CommonModelCopyWithImpl<$Res> implements $CommonModelCopyWith<$Res> {
  _$CommonModelCopyWithImpl(this._value, this._then);

  final CommonModel _value;
  // ignore: unused_field
  final $Res Function(CommonModel) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_CommonModelCopyWith<$Res>
    implements $CommonModelCopyWith<$Res> {
  factory _$$_CommonModelCopyWith(
          _$_CommonModel value, $Res Function(_$_CommonModel) then) =
      __$$_CommonModelCopyWithImpl<$Res>;
  @override
  $Res call({int code, List<UserModel> data});
}

/// @nodoc
class __$$_CommonModelCopyWithImpl<$Res> extends _$CommonModelCopyWithImpl<$Res>
    implements _$$_CommonModelCopyWith<$Res> {
  __$$_CommonModelCopyWithImpl(
      _$_CommonModel _value, $Res Function(_$_CommonModel) _then)
      : super(_value, (v) => _then(v as _$_CommonModel));

  @override
  _$_CommonModel get _value => super._value as _$_CommonModel;

  @override
  $Res call({
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_CommonModel(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommonModel implements _CommonModel {
  const _$_CommonModel(
      {required this.code, required final List<UserModel> data})
      : _data = data;

  factory _$_CommonModel.fromJson(Map<String, dynamic> json) =>
      _$$_CommonModelFromJson(json);

  @override
  final int code;
  final List<UserModel> _data;
  @override
  List<UserModel> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'CommonModel(code: $code, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommonModel &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$_CommonModelCopyWith<_$_CommonModel> get copyWith =>
      __$$_CommonModelCopyWithImpl<_$_CommonModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommonModelToJson(
      this,
    );
  }
}

abstract class _CommonModel implements CommonModel {
  const factory _CommonModel(
      {required final int code,
      required final List<UserModel> data}) = _$_CommonModel;

  factory _CommonModel.fromJson(Map<String, dynamic> json) =
      _$_CommonModel.fromJson;

  @override
  int get code;
  @override
  List<UserModel> get data;
  @override
  @JsonKey(ignore: true)
  _$$_CommonModelCopyWith<_$_CommonModel> get copyWith =>
      throw _privateConstructorUsedError;
}
