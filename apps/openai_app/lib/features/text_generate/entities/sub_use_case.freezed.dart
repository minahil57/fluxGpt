// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sub_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SubUseCase _$SubUseCaseFromJson(Map<String, dynamic> json) {
  return _SubUseCase.fromJson(json);
}

/// @nodoc
mixin _$SubUseCase {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubUseCaseCopyWith<SubUseCase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubUseCaseCopyWith<$Res> {
  factory $SubUseCaseCopyWith(
          SubUseCase value, $Res Function(SubUseCase) then) =
      _$SubUseCaseCopyWithImpl<$Res, SubUseCase>;
  @useResult
  $Res call({String name, String description});
}

/// @nodoc
class _$SubUseCaseCopyWithImpl<$Res, $Val extends SubUseCase>
    implements $SubUseCaseCopyWith<$Res> {
  _$SubUseCaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SubUseCaseCopyWith<$Res>
    implements $SubUseCaseCopyWith<$Res> {
  factory _$$_SubUseCaseCopyWith(
          _$_SubUseCase value, $Res Function(_$_SubUseCase) then) =
      __$$_SubUseCaseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String description});
}

/// @nodoc
class __$$_SubUseCaseCopyWithImpl<$Res>
    extends _$SubUseCaseCopyWithImpl<$Res, _$_SubUseCase>
    implements _$$_SubUseCaseCopyWith<$Res> {
  __$$_SubUseCaseCopyWithImpl(
      _$_SubUseCase _value, $Res Function(_$_SubUseCase) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_$_SubUseCase(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SubUseCase with DiagnosticableTreeMixin implements _SubUseCase {
  const _$_SubUseCase({required this.name, required this.description});

  factory _$_SubUseCase.fromJson(Map<String, dynamic> json) =>
      _$$_SubUseCaseFromJson(json);

  @override
  final String name;
  @override
  final String description;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SubUseCase(name: $name, description: $description)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SubUseCase'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubUseCase &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubUseCaseCopyWith<_$_SubUseCase> get copyWith =>
      __$$_SubUseCaseCopyWithImpl<_$_SubUseCase>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SubUseCaseToJson(
      this,
    );
  }
}

abstract class _SubUseCase implements SubUseCase {
  const factory _SubUseCase(
      {required final String name,
      required final String description}) = _$_SubUseCase;

  factory _SubUseCase.fromJson(Map<String, dynamic> json) =
      _$_SubUseCase.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_SubUseCaseCopyWith<_$_SubUseCase> get copyWith =>
      throw _privateConstructorUsedError;
}
