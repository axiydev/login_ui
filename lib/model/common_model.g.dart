// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommonModel _$$_CommonModelFromJson(Map<String, dynamic> json) =>
    _$_CommonModel(
      code: json['code'] as int,
      data: (json['data'] as List<dynamic>)
          .map((e) => UserModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CommonModelToJson(_$_CommonModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
    };
