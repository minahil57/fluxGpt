// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'image_generate_option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ImageOption _$$_ImageOptionFromJson(Map<String, dynamic> json) =>
    _$_ImageOption(
      styles: (json['styles'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      mediums: (json['mediums'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      artists: (json['artists'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      moods:
          (json['moods'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const <String>[],
      details: (json['details'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
    );

Map<String, dynamic> _$$_ImageOptionToJson(_$_ImageOption instance) =>
    <String, dynamic>{
      'styles': instance.styles,
      'mediums': instance.mediums,
      'artists': instance.artists,
      'moods': instance.moods,
      'details': instance.details,
    };
