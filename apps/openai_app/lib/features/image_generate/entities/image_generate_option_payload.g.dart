// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, duplicate_ignore

part of 'image_generate_option_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

// ignore: non_constant_identifier_names
_$_ImageGenerateOptionPayload _$$_ImageGenerateOptionPayloadFromJson(
        Map<String, dynamic> json) =>
    _$_ImageGenerateOptionPayload(
      numberOfImages: json['number_of_images'] as int? ?? 2,
      style: json['style'] as String?,
      medium: json['medium'] as String?,
      artist: json['artist'] as String?,
      mood: json['mood'] as String?,
      detail: json['detail'] as String?,
    );

Map<String, dynamic> _$$_ImageGenerateOptionPayloadToJson(
        _$_ImageGenerateOptionPayload instance) =>
    <String, dynamic>{
      'number_of_images': instance.numberOfImages,
      'style': instance.style,
      'medium': instance.medium,
      'artist': instance.artist,
      'mood': instance.mood,
      'detail': instance.detail,
    };
