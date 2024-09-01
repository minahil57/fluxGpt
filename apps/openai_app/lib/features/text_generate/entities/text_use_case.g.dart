// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'text_use_case.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TextUseCase _$$_TextUseCaseFromJson(Map<String, dynamic> json) =>
    _$_TextUseCase(
      name: json['name'] as String,
      subUseCases: (json['subUseCases'] as List<dynamic>)
          .map((e) => SubUseCase.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TextUseCaseToJson(_$_TextUseCase instance) =>
    <String, dynamic>{
      'name': instance.name,
      'subUseCases': instance.subUseCases.map((e) => e.toJson()).toList(),
    };
