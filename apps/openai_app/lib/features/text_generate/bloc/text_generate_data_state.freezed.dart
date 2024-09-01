// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text_generate_data_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TextGenerateDataState {
  TextUseCase get selectedUseCase => throw _privateConstructorUsedError;
  List<TextUseCase> get useCases => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  bool get isCompleteAnimatedText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TextGenerateDataStateCopyWith<TextGenerateDataState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextGenerateDataStateCopyWith<$Res> {
  factory $TextGenerateDataStateCopyWith(TextGenerateDataState value,
          $Res Function(TextGenerateDataState) then) =
      _$TextGenerateDataStateCopyWithImpl<$Res, TextGenerateDataState>;
  @useResult
  $Res call(
      {TextUseCase selectedUseCase,
      List<TextUseCase> useCases,
      String content,
      bool isCompleteAnimatedText});

  $TextUseCaseCopyWith<$Res> get selectedUseCase;
}

/// @nodoc
class _$TextGenerateDataStateCopyWithImpl<$Res,
        $Val extends TextGenerateDataState>
    implements $TextGenerateDataStateCopyWith<$Res> {
  _$TextGenerateDataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedUseCase = null,
    Object? useCases = null,
    Object? content = null,
    Object? isCompleteAnimatedText = null,
  }) {
    return _then(_value.copyWith(
      selectedUseCase: null == selectedUseCase
          ? _value.selectedUseCase
          : selectedUseCase // ignore: cast_nullable_to_non_nullable
              as TextUseCase,
      useCases: null == useCases
          ? _value.useCases
          : useCases // ignore: cast_nullable_to_non_nullable
              as List<TextUseCase>,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isCompleteAnimatedText: null == isCompleteAnimatedText
          ? _value.isCompleteAnimatedText
          : isCompleteAnimatedText // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TextUseCaseCopyWith<$Res> get selectedUseCase {
    return $TextUseCaseCopyWith<$Res>(_value.selectedUseCase, (value) {
      return _then(_value.copyWith(selectedUseCase: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TextGenerateDataStateCopyWith<$Res>
    implements $TextGenerateDataStateCopyWith<$Res> {
  factory _$$_TextGenerateDataStateCopyWith(_$_TextGenerateDataState value,
          $Res Function(_$_TextGenerateDataState) then) =
      __$$_TextGenerateDataStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TextUseCase selectedUseCase,
      List<TextUseCase> useCases,
      String content,
      bool isCompleteAnimatedText});

  @override
  $TextUseCaseCopyWith<$Res> get selectedUseCase;
}

/// @nodoc
class __$$_TextGenerateDataStateCopyWithImpl<$Res>
    extends _$TextGenerateDataStateCopyWithImpl<$Res, _$_TextGenerateDataState>
    implements _$$_TextGenerateDataStateCopyWith<$Res> {
  __$$_TextGenerateDataStateCopyWithImpl(_$_TextGenerateDataState _value,
      $Res Function(_$_TextGenerateDataState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedUseCase = null,
    Object? useCases = null,
    Object? content = null,
    Object? isCompleteAnimatedText = null,
  }) {
    return _then(_$_TextGenerateDataState(
      selectedUseCase: null == selectedUseCase
          ? _value.selectedUseCase
          : selectedUseCase // ignore: cast_nullable_to_non_nullable
              as TextUseCase,
      useCases: null == useCases
          ? _value._useCases
          : useCases // ignore: cast_nullable_to_non_nullable
              as List<TextUseCase>,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isCompleteAnimatedText: null == isCompleteAnimatedText
          ? _value.isCompleteAnimatedText
          : isCompleteAnimatedText // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TextGenerateDataState extends _TextGenerateDataState
    with DiagnosticableTreeMixin {
  const _$_TextGenerateDataState(
      {required this.selectedUseCase,
      required final List<TextUseCase> useCases,
      this.content = '',
      this.isCompleteAnimatedText = false})
      : _useCases = useCases,
        super._();

  @override
  final TextUseCase selectedUseCase;
  final List<TextUseCase> _useCases;
  @override
  List<TextUseCase> get useCases {
    if (_useCases is EqualUnmodifiableListView) return _useCases;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_useCases);
  }

  @override
  @JsonKey()
  final String content;
  @override
  @JsonKey()
  final bool isCompleteAnimatedText;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TextGenerateDataState(selectedUseCase: $selectedUseCase, useCases: $useCases, content: $content, isCompleteAnimatedText: $isCompleteAnimatedText)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TextGenerateDataState'))
      ..add(DiagnosticsProperty('selectedUseCase', selectedUseCase))
      ..add(DiagnosticsProperty('useCases', useCases))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty(
          'isCompleteAnimatedText', isCompleteAnimatedText));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TextGenerateDataState &&
            (identical(other.selectedUseCase, selectedUseCase) ||
                other.selectedUseCase == selectedUseCase) &&
            const DeepCollectionEquality().equals(other._useCases, _useCases) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.isCompleteAnimatedText, isCompleteAnimatedText) ||
                other.isCompleteAnimatedText == isCompleteAnimatedText));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      selectedUseCase,
      const DeepCollectionEquality().hash(_useCases),
      content,
      isCompleteAnimatedText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TextGenerateDataStateCopyWith<_$_TextGenerateDataState> get copyWith =>
      __$$_TextGenerateDataStateCopyWithImpl<_$_TextGenerateDataState>(
          this, _$identity);
}

abstract class _TextGenerateDataState extends TextGenerateDataState {
  const factory _TextGenerateDataState(
      {required final TextUseCase selectedUseCase,
      required final List<TextUseCase> useCases,
      final String content,
      final bool isCompleteAnimatedText}) = _$_TextGenerateDataState;
  const _TextGenerateDataState._() : super._();

  @override
  TextUseCase get selectedUseCase;
  @override
  List<TextUseCase> get useCases;
  @override
  String get content;
  @override
  bool get isCompleteAnimatedText;
  @override
  @JsonKey(ignore: true)
  _$$_TextGenerateDataStateCopyWith<_$_TextGenerateDataState> get copyWith =>
      throw _privateConstructorUsedError;
}
