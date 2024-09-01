// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'openai_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatGPT _$ChatGPTFromJson(Map<String, dynamic> json) {
  return _ChatGPT.fromJson(json);
}

/// @nodoc
mixin _$ChatGPT {
  bool get enableChat => throw _privateConstructorUsedError;
  dynamic get supabaseAnonKey => throw _privateConstructorUsedError;
  dynamic get supabaseUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatGPTCopyWith<ChatGPT> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatGPTCopyWith<$Res> {
  factory $ChatGPTCopyWith(ChatGPT value, $Res Function(ChatGPT) then) =
      _$ChatGPTCopyWithImpl<$Res, ChatGPT>;
  @useResult
  $Res call({bool enableChat, dynamic supabaseAnonKey, dynamic supabaseUrl});
}

/// @nodoc
class _$ChatGPTCopyWithImpl<$Res, $Val extends ChatGPT>
    implements $ChatGPTCopyWith<$Res> {
  _$ChatGPTCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enableChat = null,
    Object? supabaseAnonKey = freezed,
    Object? supabaseUrl = freezed,
  }) {
    return _then(_value.copyWith(
      enableChat: null == enableChat
          ? _value.enableChat
          : enableChat // ignore: cast_nullable_to_non_nullable
              as bool,
      supabaseAnonKey: freezed == supabaseAnonKey
          ? _value.supabaseAnonKey
          : supabaseAnonKey // ignore: cast_nullable_to_non_nullable
              as dynamic,
      supabaseUrl: freezed == supabaseUrl
          ? _value.supabaseUrl
          : supabaseUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChatGPTCopyWith<$Res> implements $ChatGPTCopyWith<$Res> {
  factory _$$_ChatGPTCopyWith(
          _$_ChatGPT value, $Res Function(_$_ChatGPT) then) =
      __$$_ChatGPTCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool enableChat, dynamic supabaseAnonKey, dynamic supabaseUrl});
}

/// @nodoc
class __$$_ChatGPTCopyWithImpl<$Res>
    extends _$ChatGPTCopyWithImpl<$Res, _$_ChatGPT>
    implements _$$_ChatGPTCopyWith<$Res> {
  __$$_ChatGPTCopyWithImpl(_$_ChatGPT _value, $Res Function(_$_ChatGPT) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enableChat = null,
    Object? supabaseAnonKey = freezed,
    Object? supabaseUrl = freezed,
  }) {
    return _then(_$_ChatGPT(
      enableChat: null == enableChat
          ? _value.enableChat
          : enableChat // ignore: cast_nullable_to_non_nullable
              as bool,
      supabaseAnonKey: freezed == supabaseAnonKey
          ? _value.supabaseAnonKey!
          : supabaseAnonKey,
      supabaseUrl: freezed == supabaseUrl ? _value.supabaseUrl! : supabaseUrl,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatGPT extends _ChatGPT {
  const _$_ChatGPT(
      {this.enableChat = false,
      this.supabaseAnonKey = '',
      this.supabaseUrl = ''})
      : super._();

  factory _$_ChatGPT.fromJson(Map<String, dynamic> json) =>
      _$$_ChatGPTFromJson(json);

  @override
  @JsonKey()
  final bool enableChat;
  @override
  @JsonKey()
  final dynamic supabaseAnonKey;
  @override
  @JsonKey()
  final dynamic supabaseUrl;

  @override
  String toString() {
    return 'ChatGPT(enableChat: $enableChat, supabaseAnonKey: $supabaseAnonKey, supabaseUrl: $supabaseUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatGPT &&
            (identical(other.enableChat, enableChat) ||
                other.enableChat == enableChat) &&
            const DeepCollectionEquality()
                .equals(other.supabaseAnonKey, supabaseAnonKey) &&
            const DeepCollectionEquality()
                .equals(other.supabaseUrl, supabaseUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      enableChat,
      const DeepCollectionEquality().hash(supabaseAnonKey),
      const DeepCollectionEquality().hash(supabaseUrl));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatGPTCopyWith<_$_ChatGPT> get copyWith =>
      __$$_ChatGPTCopyWithImpl<_$_ChatGPT>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatGPTToJson(
      this,
    );
  }
}

abstract class _ChatGPT extends ChatGPT {
  const factory _ChatGPT(
      {final bool enableChat,
      final dynamic supabaseAnonKey,
      final dynamic supabaseUrl}) = _$_ChatGPT;
  const _ChatGPT._() : super._();

  factory _ChatGPT.fromJson(Map<String, dynamic> json) = _$_ChatGPT.fromJson;

  @override
  bool get enableChat;
  @override
  dynamic get supabaseAnonKey;
  @override
  dynamic get supabaseUrl;
  @override
  @JsonKey(ignore: true)
  _$$_ChatGPTCopyWith<_$_ChatGPT> get copyWith =>
      throw _privateConstructorUsedError;
}
