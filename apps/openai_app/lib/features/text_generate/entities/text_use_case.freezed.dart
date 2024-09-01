// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TextUseCase _$TextUseCaseFromJson(Map<String, dynamic> json) {
  return _TextUseCase.fromJson(json);
}

/// @nodoc
mixin _$TextUseCase {
  String get name => throw _privateConstructorUsedError;
  List<SubUseCase> get subUseCases => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TextUseCaseCopyWith<TextUseCase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextUseCaseCopyWith<$Res> {
  factory $TextUseCaseCopyWith(
          TextUseCase value, $Res Function(TextUseCase) then) =
      _$TextUseCaseCopyWithImpl<$Res, TextUseCase>;
  @useResult
  $Res call({String name, List<SubUseCase> subUseCases});
}

/// @nodoc
class _$TextUseCaseCopyWithImpl<$Res, $Val extends TextUseCase>
    implements $TextUseCaseCopyWith<$Res> {
  _$TextUseCaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? subUseCases = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      subUseCases: null == subUseCases
          ? _value.subUseCases
          : subUseCases // ignore: cast_nullable_to_non_nullable
              as List<SubUseCase>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TextUseCaseCopyWith<$Res>
    implements $TextUseCaseCopyWith<$Res> {
  factory _$$_TextUseCaseCopyWith(
          _$_TextUseCase value, $Res Function(_$_TextUseCase) then) =
      __$$_TextUseCaseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<SubUseCase> subUseCases});
}

/// @nodoc
class __$$_TextUseCaseCopyWithImpl<$Res>
    extends _$TextUseCaseCopyWithImpl<$Res, _$_TextUseCase>
    implements _$$_TextUseCaseCopyWith<$Res> {
  __$$_TextUseCaseCopyWithImpl(
      _$_TextUseCase _value, $Res Function(_$_TextUseCase) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? subUseCases = null,
  }) {
    return _then(_$_TextUseCase(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      subUseCases: null == subUseCases
          ? _value._subUseCases
          : subUseCases // ignore: cast_nullable_to_non_nullable
              as List<SubUseCase>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TextUseCase with DiagnosticableTreeMixin implements _TextUseCase {
  const _$_TextUseCase(
      {required this.name, required final List<SubUseCase> subUseCases})
      : _subUseCases = subUseCases;

  factory _$_TextUseCase.fromJson(Map<String, dynamic> json) =>
      _$$_TextUseCaseFromJson(json);

  @override
  final String name;
  final List<SubUseCase> _subUseCases;
  @override
  List<SubUseCase> get subUseCases {
    if (_subUseCases is EqualUnmodifiableListView) return _subUseCases;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subUseCases);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TextUseCase(name: $name, subUseCases: $subUseCases)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TextUseCase'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('subUseCases', subUseCases));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TextUseCase &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._subUseCases, _subUseCases));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_subUseCases));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TextUseCaseCopyWith<_$_TextUseCase> get copyWith =>
      __$$_TextUseCaseCopyWithImpl<_$_TextUseCase>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TextUseCaseToJson(
      this,
    );
  }
}

abstract class _TextUseCase implements TextUseCase {
  const factory _TextUseCase(
      {required final String name,
      required final List<SubUseCase> subUseCases}) = _$_TextUseCase;

  factory _TextUseCase.fromJson(Map<String, dynamic> json) =
      _$_TextUseCase.fromJson;

  @override
  String get name;
  @override
  List<SubUseCase> get subUseCases;
  @override
  @JsonKey(ignore: true)
  _$$_TextUseCaseCopyWith<_$_TextUseCase> get copyWith =>
      throw _privateConstructorUsedError;
}
