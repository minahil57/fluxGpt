// ignore_for_file: non_constant_identifier_names
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'openai_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatGPT _$$_ChatGPTFromJson(Map<String, dynamic> json) => _$_ChatGPT(
      enableChat: json['enableChat'] as bool? ?? false,
      supabaseAnonKey: json['supabaseAnonKey'] ?? '',
      supabaseUrl: json['supabaseUrl'] ?? '',
    );

Map<String, dynamic> _$$_ChatGPTToJson(_$_ChatGPT instance) =>
    <String, dynamic>{
      'enableChat': instance.enableChat,
      'supabaseAnonKey': instance.supabaseAnonKey,
      'supabaseUrl': instance.supabaseUrl,
    };
