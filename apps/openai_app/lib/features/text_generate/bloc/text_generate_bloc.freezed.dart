// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text_generate_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TextGenerateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(TextUseCase useCase) useCaseChanged,
    required TResult Function(List<String> dataFields) generateContent,
    required TResult Function() changeToEditMode,
    required TResult Function() changeToViewMode,
    required TResult Function(String text) textChanged,
    required TResult Function() completeAnimatedText,
    required TResult Function(String content) copyContent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(TextUseCase useCase)? useCaseChanged,
    TResult? Function(List<String> dataFields)? generateContent,
    TResult? Function()? changeToEditMode,
    TResult? Function()? changeToViewMode,
    TResult? Function(String text)? textChanged,
    TResult? Function()? completeAnimatedText,
    TResult? Function(String content)? copyContent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(TextUseCase useCase)? useCaseChanged,
    TResult Function(List<String> dataFields)? generateContent,
    TResult Function()? changeToEditMode,
    TResult Function()? changeToViewMode,
    TResult Function(String text)? textChanged,
    TResult Function()? completeAnimatedText,
    TResult Function(String content)? copyContent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UseCaseChanged value) useCaseChanged,
    required TResult Function(_GenerateContent value) generateContent,
    required TResult Function(_ChangeToEditMode value) changeToEditMode,
    required TResult Function(_ChangeToViewMode value) changeToViewMode,
    required TResult Function(_TextChanged value) textChanged,
    required TResult Function(_CompleteAnimatedText value) completeAnimatedText,
    required TResult Function(_CopyContent value) copyContent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UseCaseChanged value)? useCaseChanged,
    TResult? Function(_GenerateContent value)? generateContent,
    TResult? Function(_ChangeToEditMode value)? changeToEditMode,
    TResult? Function(_ChangeToViewMode value)? changeToViewMode,
    TResult? Function(_TextChanged value)? textChanged,
    TResult? Function(_CompleteAnimatedText value)? completeAnimatedText,
    TResult? Function(_CopyContent value)? copyContent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UseCaseChanged value)? useCaseChanged,
    TResult Function(_GenerateContent value)? generateContent,
    TResult Function(_ChangeToEditMode value)? changeToEditMode,
    TResult Function(_ChangeToViewMode value)? changeToViewMode,
    TResult Function(_TextChanged value)? textChanged,
    TResult Function(_CompleteAnimatedText value)? completeAnimatedText,
    TResult Function(_CopyContent value)? copyContent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextGenerateEventCopyWith<$Res> {
  factory $TextGenerateEventCopyWith(
          TextGenerateEvent value, $Res Function(TextGenerateEvent) then) =
      _$TextGenerateEventCopyWithImpl<$Res, TextGenerateEvent>;
}

/// @nodoc
class _$TextGenerateEventCopyWithImpl<$Res, $Val extends TextGenerateEvent>
    implements $TextGenerateEventCopyWith<$Res> {
  _$TextGenerateEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$TextGenerateEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'TextGenerateEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(TextUseCase useCase) useCaseChanged,
    required TResult Function(List<String> dataFields) generateContent,
    required TResult Function() changeToEditMode,
    required TResult Function() changeToViewMode,
    required TResult Function(String text) textChanged,
    required TResult Function() completeAnimatedText,
    required TResult Function(String content) copyContent,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(TextUseCase useCase)? useCaseChanged,
    TResult? Function(List<String> dataFields)? generateContent,
    TResult? Function()? changeToEditMode,
    TResult? Function()? changeToViewMode,
    TResult? Function(String text)? textChanged,
    TResult? Function()? completeAnimatedText,
    TResult? Function(String content)? copyContent,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(TextUseCase useCase)? useCaseChanged,
    TResult Function(List<String> dataFields)? generateContent,
    TResult Function()? changeToEditMode,
    TResult Function()? changeToViewMode,
    TResult Function(String text)? textChanged,
    TResult Function()? completeAnimatedText,
    TResult Function(String content)? copyContent,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UseCaseChanged value) useCaseChanged,
    required TResult Function(_GenerateContent value) generateContent,
    required TResult Function(_ChangeToEditMode value) changeToEditMode,
    required TResult Function(_ChangeToViewMode value) changeToViewMode,
    required TResult Function(_TextChanged value) textChanged,
    required TResult Function(_CompleteAnimatedText value) completeAnimatedText,
    required TResult Function(_CopyContent value) copyContent,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UseCaseChanged value)? useCaseChanged,
    TResult? Function(_GenerateContent value)? generateContent,
    TResult? Function(_ChangeToEditMode value)? changeToEditMode,
    TResult? Function(_ChangeToViewMode value)? changeToViewMode,
    TResult? Function(_TextChanged value)? textChanged,
    TResult? Function(_CompleteAnimatedText value)? completeAnimatedText,
    TResult? Function(_CopyContent value)? copyContent,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UseCaseChanged value)? useCaseChanged,
    TResult Function(_GenerateContent value)? generateContent,
    TResult Function(_ChangeToEditMode value)? changeToEditMode,
    TResult Function(_ChangeToViewMode value)? changeToViewMode,
    TResult Function(_TextChanged value)? textChanged,
    TResult Function(_CompleteAnimatedText value)? completeAnimatedText,
    TResult Function(_CopyContent value)? copyContent,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements TextGenerateEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_UseCaseChangedCopyWith<$Res> {
  factory _$$_UseCaseChangedCopyWith(
          _$_UseCaseChanged value, $Res Function(_$_UseCaseChanged) then) =
      __$$_UseCaseChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({TextUseCase useCase});

  $TextUseCaseCopyWith<$Res> get useCase;
}

/// @nodoc
class __$$_UseCaseChangedCopyWithImpl<$Res>
    extends _$TextGenerateEventCopyWithImpl<$Res, _$_UseCaseChanged>
    implements _$$_UseCaseChangedCopyWith<$Res> {
  __$$_UseCaseChangedCopyWithImpl(
      _$_UseCaseChanged _value, $Res Function(_$_UseCaseChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? useCase = null,
  }) {
    return _then(_$_UseCaseChanged(
      useCase: null == useCase
          ? _value.useCase
          : useCase // ignore: cast_nullable_to_non_nullable
              as TextUseCase,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TextUseCaseCopyWith<$Res> get useCase {
    return $TextUseCaseCopyWith<$Res>(_value.useCase, (value) {
      return _then(_value.copyWith(useCase: value));
    });
  }
}

/// @nodoc

class _$_UseCaseChanged implements _UseCaseChanged {
  const _$_UseCaseChanged({required this.useCase});

  @override
  final TextUseCase useCase;

  @override
  String toString() {
    return 'TextGenerateEvent.useCaseChanged(useCase: $useCase)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UseCaseChanged &&
            (identical(other.useCase, useCase) || other.useCase == useCase));
  }

  @override
  int get hashCode => Object.hash(runtimeType, useCase);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UseCaseChangedCopyWith<_$_UseCaseChanged> get copyWith =>
      __$$_UseCaseChangedCopyWithImpl<_$_UseCaseChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(TextUseCase useCase) useCaseChanged,
    required TResult Function(List<String> dataFields) generateContent,
    required TResult Function() changeToEditMode,
    required TResult Function() changeToViewMode,
    required TResult Function(String text) textChanged,
    required TResult Function() completeAnimatedText,
    required TResult Function(String content) copyContent,
  }) {
    return useCaseChanged(useCase);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(TextUseCase useCase)? useCaseChanged,
    TResult? Function(List<String> dataFields)? generateContent,
    TResult? Function()? changeToEditMode,
    TResult? Function()? changeToViewMode,
    TResult? Function(String text)? textChanged,
    TResult? Function()? completeAnimatedText,
    TResult? Function(String content)? copyContent,
  }) {
    return useCaseChanged?.call(useCase);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(TextUseCase useCase)? useCaseChanged,
    TResult Function(List<String> dataFields)? generateContent,
    TResult Function()? changeToEditMode,
    TResult Function()? changeToViewMode,
    TResult Function(String text)? textChanged,
    TResult Function()? completeAnimatedText,
    TResult Function(String content)? copyContent,
    required TResult orElse(),
  }) {
    if (useCaseChanged != null) {
      return useCaseChanged(useCase);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UseCaseChanged value) useCaseChanged,
    required TResult Function(_GenerateContent value) generateContent,
    required TResult Function(_ChangeToEditMode value) changeToEditMode,
    required TResult Function(_ChangeToViewMode value) changeToViewMode,
    required TResult Function(_TextChanged value) textChanged,
    required TResult Function(_CompleteAnimatedText value) completeAnimatedText,
    required TResult Function(_CopyContent value) copyContent,
  }) {
    return useCaseChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UseCaseChanged value)? useCaseChanged,
    TResult? Function(_GenerateContent value)? generateContent,
    TResult? Function(_ChangeToEditMode value)? changeToEditMode,
    TResult? Function(_ChangeToViewMode value)? changeToViewMode,
    TResult? Function(_TextChanged value)? textChanged,
    TResult? Function(_CompleteAnimatedText value)? completeAnimatedText,
    TResult? Function(_CopyContent value)? copyContent,
  }) {
    return useCaseChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UseCaseChanged value)? useCaseChanged,
    TResult Function(_GenerateContent value)? generateContent,
    TResult Function(_ChangeToEditMode value)? changeToEditMode,
    TResult Function(_ChangeToViewMode value)? changeToViewMode,
    TResult Function(_TextChanged value)? textChanged,
    TResult Function(_CompleteAnimatedText value)? completeAnimatedText,
    TResult Function(_CopyContent value)? copyContent,
    required TResult orElse(),
  }) {
    if (useCaseChanged != null) {
      return useCaseChanged(this);
    }
    return orElse();
  }
}

abstract class _UseCaseChanged implements TextGenerateEvent {
  const factory _UseCaseChanged({required final TextUseCase useCase}) =
      _$_UseCaseChanged;

  TextUseCase get useCase;
  @JsonKey(ignore: true)
  _$$_UseCaseChangedCopyWith<_$_UseCaseChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GenerateContentCopyWith<$Res> {
  factory _$$_GenerateContentCopyWith(
          _$_GenerateContent value, $Res Function(_$_GenerateContent) then) =
      __$$_GenerateContentCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> dataFields});
}

/// @nodoc
class __$$_GenerateContentCopyWithImpl<$Res>
    extends _$TextGenerateEventCopyWithImpl<$Res, _$_GenerateContent>
    implements _$$_GenerateContentCopyWith<$Res> {
  __$$_GenerateContentCopyWithImpl(
      _$_GenerateContent _value, $Res Function(_$_GenerateContent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataFields = null,
  }) {
    return _then(_$_GenerateContent(
      dataFields: null == dataFields
          ? _value._dataFields
          : dataFields // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_GenerateContent implements _GenerateContent {
  const _$_GenerateContent({required final List<String> dataFields})
      : _dataFields = dataFields;

  final List<String> _dataFields;
  @override
  List<String> get dataFields {
    if (_dataFields is EqualUnmodifiableListView) return _dataFields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dataFields);
  }

  @override
  String toString() {
    return 'TextGenerateEvent.generateContent(dataFields: $dataFields)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GenerateContent &&
            const DeepCollectionEquality()
                .equals(other._dataFields, _dataFields));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_dataFields));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GenerateContentCopyWith<_$_GenerateContent> get copyWith =>
      __$$_GenerateContentCopyWithImpl<_$_GenerateContent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(TextUseCase useCase) useCaseChanged,
    required TResult Function(List<String> dataFields) generateContent,
    required TResult Function() changeToEditMode,
    required TResult Function() changeToViewMode,
    required TResult Function(String text) textChanged,
    required TResult Function() completeAnimatedText,
    required TResult Function(String content) copyContent,
  }) {
    return generateContent(dataFields);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(TextUseCase useCase)? useCaseChanged,
    TResult? Function(List<String> dataFields)? generateContent,
    TResult? Function()? changeToEditMode,
    TResult? Function()? changeToViewMode,
    TResult? Function(String text)? textChanged,
    TResult? Function()? completeAnimatedText,
    TResult? Function(String content)? copyContent,
  }) {
    return generateContent?.call(dataFields);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(TextUseCase useCase)? useCaseChanged,
    TResult Function(List<String> dataFields)? generateContent,
    TResult Function()? changeToEditMode,
    TResult Function()? changeToViewMode,
    TResult Function(String text)? textChanged,
    TResult Function()? completeAnimatedText,
    TResult Function(String content)? copyContent,
    required TResult orElse(),
  }) {
    if (generateContent != null) {
      return generateContent(dataFields);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UseCaseChanged value) useCaseChanged,
    required TResult Function(_GenerateContent value) generateContent,
    required TResult Function(_ChangeToEditMode value) changeToEditMode,
    required TResult Function(_ChangeToViewMode value) changeToViewMode,
    required TResult Function(_TextChanged value) textChanged,
    required TResult Function(_CompleteAnimatedText value) completeAnimatedText,
    required TResult Function(_CopyContent value) copyContent,
  }) {
    return generateContent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UseCaseChanged value)? useCaseChanged,
    TResult? Function(_GenerateContent value)? generateContent,
    TResult? Function(_ChangeToEditMode value)? changeToEditMode,
    TResult? Function(_ChangeToViewMode value)? changeToViewMode,
    TResult? Function(_TextChanged value)? textChanged,
    TResult? Function(_CompleteAnimatedText value)? completeAnimatedText,
    TResult? Function(_CopyContent value)? copyContent,
  }) {
    return generateContent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UseCaseChanged value)? useCaseChanged,
    TResult Function(_GenerateContent value)? generateContent,
    TResult Function(_ChangeToEditMode value)? changeToEditMode,
    TResult Function(_ChangeToViewMode value)? changeToViewMode,
    TResult Function(_TextChanged value)? textChanged,
    TResult Function(_CompleteAnimatedText value)? completeAnimatedText,
    TResult Function(_CopyContent value)? copyContent,
    required TResult orElse(),
  }) {
    if (generateContent != null) {
      return generateContent(this);
    }
    return orElse();
  }
}

abstract class _GenerateContent implements TextGenerateEvent {
  const factory _GenerateContent({required final List<String> dataFields}) =
      _$_GenerateContent;

  List<String> get dataFields;
  @JsonKey(ignore: true)
  _$$_GenerateContentCopyWith<_$_GenerateContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeToEditModeCopyWith<$Res> {
  factory _$$_ChangeToEditModeCopyWith(
          _$_ChangeToEditMode value, $Res Function(_$_ChangeToEditMode) then) =
      __$$_ChangeToEditModeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ChangeToEditModeCopyWithImpl<$Res>
    extends _$TextGenerateEventCopyWithImpl<$Res, _$_ChangeToEditMode>
    implements _$$_ChangeToEditModeCopyWith<$Res> {
  __$$_ChangeToEditModeCopyWithImpl(
      _$_ChangeToEditMode _value, $Res Function(_$_ChangeToEditMode) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ChangeToEditMode implements _ChangeToEditMode {
  const _$_ChangeToEditMode();

  @override
  String toString() {
    return 'TextGenerateEvent.changeToEditMode()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ChangeToEditMode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(TextUseCase useCase) useCaseChanged,
    required TResult Function(List<String> dataFields) generateContent,
    required TResult Function() changeToEditMode,
    required TResult Function() changeToViewMode,
    required TResult Function(String text) textChanged,
    required TResult Function() completeAnimatedText,
    required TResult Function(String content) copyContent,
  }) {
    return changeToEditMode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(TextUseCase useCase)? useCaseChanged,
    TResult? Function(List<String> dataFields)? generateContent,
    TResult? Function()? changeToEditMode,
    TResult? Function()? changeToViewMode,
    TResult? Function(String text)? textChanged,
    TResult? Function()? completeAnimatedText,
    TResult? Function(String content)? copyContent,
  }) {
    return changeToEditMode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(TextUseCase useCase)? useCaseChanged,
    TResult Function(List<String> dataFields)? generateContent,
    TResult Function()? changeToEditMode,
    TResult Function()? changeToViewMode,
    TResult Function(String text)? textChanged,
    TResult Function()? completeAnimatedText,
    TResult Function(String content)? copyContent,
    required TResult orElse(),
  }) {
    if (changeToEditMode != null) {
      return changeToEditMode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UseCaseChanged value) useCaseChanged,
    required TResult Function(_GenerateContent value) generateContent,
    required TResult Function(_ChangeToEditMode value) changeToEditMode,
    required TResult Function(_ChangeToViewMode value) changeToViewMode,
    required TResult Function(_TextChanged value) textChanged,
    required TResult Function(_CompleteAnimatedText value) completeAnimatedText,
    required TResult Function(_CopyContent value) copyContent,
  }) {
    return changeToEditMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UseCaseChanged value)? useCaseChanged,
    TResult? Function(_GenerateContent value)? generateContent,
    TResult? Function(_ChangeToEditMode value)? changeToEditMode,
    TResult? Function(_ChangeToViewMode value)? changeToViewMode,
    TResult? Function(_TextChanged value)? textChanged,
    TResult? Function(_CompleteAnimatedText value)? completeAnimatedText,
    TResult? Function(_CopyContent value)? copyContent,
  }) {
    return changeToEditMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UseCaseChanged value)? useCaseChanged,
    TResult Function(_GenerateContent value)? generateContent,
    TResult Function(_ChangeToEditMode value)? changeToEditMode,
    TResult Function(_ChangeToViewMode value)? changeToViewMode,
    TResult Function(_TextChanged value)? textChanged,
    TResult Function(_CompleteAnimatedText value)? completeAnimatedText,
    TResult Function(_CopyContent value)? copyContent,
    required TResult orElse(),
  }) {
    if (changeToEditMode != null) {
      return changeToEditMode(this);
    }
    return orElse();
  }
}

abstract class _ChangeToEditMode implements TextGenerateEvent {
  const factory _ChangeToEditMode() = _$_ChangeToEditMode;
}

/// @nodoc
abstract class _$$_ChangeToViewModeCopyWith<$Res> {
  factory _$$_ChangeToViewModeCopyWith(
          _$_ChangeToViewMode value, $Res Function(_$_ChangeToViewMode) then) =
      __$$_ChangeToViewModeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ChangeToViewModeCopyWithImpl<$Res>
    extends _$TextGenerateEventCopyWithImpl<$Res, _$_ChangeToViewMode>
    implements _$$_ChangeToViewModeCopyWith<$Res> {
  __$$_ChangeToViewModeCopyWithImpl(
      _$_ChangeToViewMode _value, $Res Function(_$_ChangeToViewMode) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ChangeToViewMode implements _ChangeToViewMode {
  const _$_ChangeToViewMode();

  @override
  String toString() {
    return 'TextGenerateEvent.changeToViewMode()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ChangeToViewMode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(TextUseCase useCase) useCaseChanged,
    required TResult Function(List<String> dataFields) generateContent,
    required TResult Function() changeToEditMode,
    required TResult Function() changeToViewMode,
    required TResult Function(String text) textChanged,
    required TResult Function() completeAnimatedText,
    required TResult Function(String content) copyContent,
  }) {
    return changeToViewMode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(TextUseCase useCase)? useCaseChanged,
    TResult? Function(List<String> dataFields)? generateContent,
    TResult? Function()? changeToEditMode,
    TResult? Function()? changeToViewMode,
    TResult? Function(String text)? textChanged,
    TResult? Function()? completeAnimatedText,
    TResult? Function(String content)? copyContent,
  }) {
    return changeToViewMode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(TextUseCase useCase)? useCaseChanged,
    TResult Function(List<String> dataFields)? generateContent,
    TResult Function()? changeToEditMode,
    TResult Function()? changeToViewMode,
    TResult Function(String text)? textChanged,
    TResult Function()? completeAnimatedText,
    TResult Function(String content)? copyContent,
    required TResult orElse(),
  }) {
    if (changeToViewMode != null) {
      return changeToViewMode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UseCaseChanged value) useCaseChanged,
    required TResult Function(_GenerateContent value) generateContent,
    required TResult Function(_ChangeToEditMode value) changeToEditMode,
    required TResult Function(_ChangeToViewMode value) changeToViewMode,
    required TResult Function(_TextChanged value) textChanged,
    required TResult Function(_CompleteAnimatedText value) completeAnimatedText,
    required TResult Function(_CopyContent value) copyContent,
  }) {
    return changeToViewMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UseCaseChanged value)? useCaseChanged,
    TResult? Function(_GenerateContent value)? generateContent,
    TResult? Function(_ChangeToEditMode value)? changeToEditMode,
    TResult? Function(_ChangeToViewMode value)? changeToViewMode,
    TResult? Function(_TextChanged value)? textChanged,
    TResult? Function(_CompleteAnimatedText value)? completeAnimatedText,
    TResult? Function(_CopyContent value)? copyContent,
  }) {
    return changeToViewMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UseCaseChanged value)? useCaseChanged,
    TResult Function(_GenerateContent value)? generateContent,
    TResult Function(_ChangeToEditMode value)? changeToEditMode,
    TResult Function(_ChangeToViewMode value)? changeToViewMode,
    TResult Function(_TextChanged value)? textChanged,
    TResult Function(_CompleteAnimatedText value)? completeAnimatedText,
    TResult Function(_CopyContent value)? copyContent,
    required TResult orElse(),
  }) {
    if (changeToViewMode != null) {
      return changeToViewMode(this);
    }
    return orElse();
  }
}

abstract class _ChangeToViewMode implements TextGenerateEvent {
  const factory _ChangeToViewMode() = _$_ChangeToViewMode;
}

/// @nodoc
abstract class _$$_TextChangedCopyWith<$Res> {
  factory _$$_TextChangedCopyWith(
          _$_TextChanged value, $Res Function(_$_TextChanged) then) =
      __$$_TextChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$_TextChangedCopyWithImpl<$Res>
    extends _$TextGenerateEventCopyWithImpl<$Res, _$_TextChanged>
    implements _$$_TextChangedCopyWith<$Res> {
  __$$_TextChangedCopyWithImpl(
      _$_TextChanged _value, $Res Function(_$_TextChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$_TextChanged(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TextChanged implements _TextChanged {
  const _$_TextChanged(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'TextGenerateEvent.textChanged(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TextChanged &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TextChangedCopyWith<_$_TextChanged> get copyWith =>
      __$$_TextChangedCopyWithImpl<_$_TextChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(TextUseCase useCase) useCaseChanged,
    required TResult Function(List<String> dataFields) generateContent,
    required TResult Function() changeToEditMode,
    required TResult Function() changeToViewMode,
    required TResult Function(String text) textChanged,
    required TResult Function() completeAnimatedText,
    required TResult Function(String content) copyContent,
  }) {
    return textChanged(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(TextUseCase useCase)? useCaseChanged,
    TResult? Function(List<String> dataFields)? generateContent,
    TResult? Function()? changeToEditMode,
    TResult? Function()? changeToViewMode,
    TResult? Function(String text)? textChanged,
    TResult? Function()? completeAnimatedText,
    TResult? Function(String content)? copyContent,
  }) {
    return textChanged?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(TextUseCase useCase)? useCaseChanged,
    TResult Function(List<String> dataFields)? generateContent,
    TResult Function()? changeToEditMode,
    TResult Function()? changeToViewMode,
    TResult Function(String text)? textChanged,
    TResult Function()? completeAnimatedText,
    TResult Function(String content)? copyContent,
    required TResult orElse(),
  }) {
    if (textChanged != null) {
      return textChanged(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UseCaseChanged value) useCaseChanged,
    required TResult Function(_GenerateContent value) generateContent,
    required TResult Function(_ChangeToEditMode value) changeToEditMode,
    required TResult Function(_ChangeToViewMode value) changeToViewMode,
    required TResult Function(_TextChanged value) textChanged,
    required TResult Function(_CompleteAnimatedText value) completeAnimatedText,
    required TResult Function(_CopyContent value) copyContent,
  }) {
    return textChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UseCaseChanged value)? useCaseChanged,
    TResult? Function(_GenerateContent value)? generateContent,
    TResult? Function(_ChangeToEditMode value)? changeToEditMode,
    TResult? Function(_ChangeToViewMode value)? changeToViewMode,
    TResult? Function(_TextChanged value)? textChanged,
    TResult? Function(_CompleteAnimatedText value)? completeAnimatedText,
    TResult? Function(_CopyContent value)? copyContent,
  }) {
    return textChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UseCaseChanged value)? useCaseChanged,
    TResult Function(_GenerateContent value)? generateContent,
    TResult Function(_ChangeToEditMode value)? changeToEditMode,
    TResult Function(_ChangeToViewMode value)? changeToViewMode,
    TResult Function(_TextChanged value)? textChanged,
    TResult Function(_CompleteAnimatedText value)? completeAnimatedText,
    TResult Function(_CopyContent value)? copyContent,
    required TResult orElse(),
  }) {
    if (textChanged != null) {
      return textChanged(this);
    }
    return orElse();
  }
}

abstract class _TextChanged implements TextGenerateEvent {
  const factory _TextChanged(final String text) = _$_TextChanged;

  String get text;
  @JsonKey(ignore: true)
  _$$_TextChangedCopyWith<_$_TextChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CompleteAnimatedTextCopyWith<$Res> {
  factory _$$_CompleteAnimatedTextCopyWith(_$_CompleteAnimatedText value,
          $Res Function(_$_CompleteAnimatedText) then) =
      __$$_CompleteAnimatedTextCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CompleteAnimatedTextCopyWithImpl<$Res>
    extends _$TextGenerateEventCopyWithImpl<$Res, _$_CompleteAnimatedText>
    implements _$$_CompleteAnimatedTextCopyWith<$Res> {
  __$$_CompleteAnimatedTextCopyWithImpl(_$_CompleteAnimatedText _value,
      $Res Function(_$_CompleteAnimatedText) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CompleteAnimatedText implements _CompleteAnimatedText {
  const _$_CompleteAnimatedText();

  @override
  String toString() {
    return 'TextGenerateEvent.completeAnimatedText()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CompleteAnimatedText);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(TextUseCase useCase) useCaseChanged,
    required TResult Function(List<String> dataFields) generateContent,
    required TResult Function() changeToEditMode,
    required TResult Function() changeToViewMode,
    required TResult Function(String text) textChanged,
    required TResult Function() completeAnimatedText,
    required TResult Function(String content) copyContent,
  }) {
    return completeAnimatedText();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(TextUseCase useCase)? useCaseChanged,
    TResult? Function(List<String> dataFields)? generateContent,
    TResult? Function()? changeToEditMode,
    TResult? Function()? changeToViewMode,
    TResult? Function(String text)? textChanged,
    TResult? Function()? completeAnimatedText,
    TResult? Function(String content)? copyContent,
  }) {
    return completeAnimatedText?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(TextUseCase useCase)? useCaseChanged,
    TResult Function(List<String> dataFields)? generateContent,
    TResult Function()? changeToEditMode,
    TResult Function()? changeToViewMode,
    TResult Function(String text)? textChanged,
    TResult Function()? completeAnimatedText,
    TResult Function(String content)? copyContent,
    required TResult orElse(),
  }) {
    if (completeAnimatedText != null) {
      return completeAnimatedText();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UseCaseChanged value) useCaseChanged,
    required TResult Function(_GenerateContent value) generateContent,
    required TResult Function(_ChangeToEditMode value) changeToEditMode,
    required TResult Function(_ChangeToViewMode value) changeToViewMode,
    required TResult Function(_TextChanged value) textChanged,
    required TResult Function(_CompleteAnimatedText value) completeAnimatedText,
    required TResult Function(_CopyContent value) copyContent,
  }) {
    return completeAnimatedText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UseCaseChanged value)? useCaseChanged,
    TResult? Function(_GenerateContent value)? generateContent,
    TResult? Function(_ChangeToEditMode value)? changeToEditMode,
    TResult? Function(_ChangeToViewMode value)? changeToViewMode,
    TResult? Function(_TextChanged value)? textChanged,
    TResult? Function(_CompleteAnimatedText value)? completeAnimatedText,
    TResult? Function(_CopyContent value)? copyContent,
  }) {
    return completeAnimatedText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UseCaseChanged value)? useCaseChanged,
    TResult Function(_GenerateContent value)? generateContent,
    TResult Function(_ChangeToEditMode value)? changeToEditMode,
    TResult Function(_ChangeToViewMode value)? changeToViewMode,
    TResult Function(_TextChanged value)? textChanged,
    TResult Function(_CompleteAnimatedText value)? completeAnimatedText,
    TResult Function(_CopyContent value)? copyContent,
    required TResult orElse(),
  }) {
    if (completeAnimatedText != null) {
      return completeAnimatedText(this);
    }
    return orElse();
  }
}

abstract class _CompleteAnimatedText implements TextGenerateEvent {
  const factory _CompleteAnimatedText() = _$_CompleteAnimatedText;
}

/// @nodoc
abstract class _$$_CopyContentCopyWith<$Res> {
  factory _$$_CopyContentCopyWith(
          _$_CopyContent value, $Res Function(_$_CopyContent) then) =
      __$$_CopyContentCopyWithImpl<$Res>;
  @useResult
  $Res call({String content});
}

/// @nodoc
class __$$_CopyContentCopyWithImpl<$Res>
    extends _$TextGenerateEventCopyWithImpl<$Res, _$_CopyContent>
    implements _$$_CopyContentCopyWith<$Res> {
  __$$_CopyContentCopyWithImpl(
      _$_CopyContent _value, $Res Function(_$_CopyContent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
  }) {
    return _then(_$_CopyContent(
      null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CopyContent implements _CopyContent {
  const _$_CopyContent(this.content);

  @override
  final String content;

  @override
  String toString() {
    return 'TextGenerateEvent.copyContent(content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CopyContent &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CopyContentCopyWith<_$_CopyContent> get copyWith =>
      __$$_CopyContentCopyWithImpl<_$_CopyContent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(TextUseCase useCase) useCaseChanged,
    required TResult Function(List<String> dataFields) generateContent,
    required TResult Function() changeToEditMode,
    required TResult Function() changeToViewMode,
    required TResult Function(String text) textChanged,
    required TResult Function() completeAnimatedText,
    required TResult Function(String content) copyContent,
  }) {
    return copyContent(content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(TextUseCase useCase)? useCaseChanged,
    TResult? Function(List<String> dataFields)? generateContent,
    TResult? Function()? changeToEditMode,
    TResult? Function()? changeToViewMode,
    TResult? Function(String text)? textChanged,
    TResult? Function()? completeAnimatedText,
    TResult? Function(String content)? copyContent,
  }) {
    return copyContent?.call(content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(TextUseCase useCase)? useCaseChanged,
    TResult Function(List<String> dataFields)? generateContent,
    TResult Function()? changeToEditMode,
    TResult Function()? changeToViewMode,
    TResult Function(String text)? textChanged,
    TResult Function()? completeAnimatedText,
    TResult Function(String content)? copyContent,
    required TResult orElse(),
  }) {
    if (copyContent != null) {
      return copyContent(content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UseCaseChanged value) useCaseChanged,
    required TResult Function(_GenerateContent value) generateContent,
    required TResult Function(_ChangeToEditMode value) changeToEditMode,
    required TResult Function(_ChangeToViewMode value) changeToViewMode,
    required TResult Function(_TextChanged value) textChanged,
    required TResult Function(_CompleteAnimatedText value) completeAnimatedText,
    required TResult Function(_CopyContent value) copyContent,
  }) {
    return copyContent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UseCaseChanged value)? useCaseChanged,
    TResult? Function(_GenerateContent value)? generateContent,
    TResult? Function(_ChangeToEditMode value)? changeToEditMode,
    TResult? Function(_ChangeToViewMode value)? changeToViewMode,
    TResult? Function(_TextChanged value)? textChanged,
    TResult? Function(_CompleteAnimatedText value)? completeAnimatedText,
    TResult? Function(_CopyContent value)? copyContent,
  }) {
    return copyContent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UseCaseChanged value)? useCaseChanged,
    TResult Function(_GenerateContent value)? generateContent,
    TResult Function(_ChangeToEditMode value)? changeToEditMode,
    TResult Function(_ChangeToViewMode value)? changeToViewMode,
    TResult Function(_TextChanged value)? textChanged,
    TResult Function(_CompleteAnimatedText value)? completeAnimatedText,
    TResult Function(_CopyContent value)? copyContent,
    required TResult orElse(),
  }) {
    if (copyContent != null) {
      return copyContent(this);
    }
    return orElse();
  }
}

abstract class _CopyContent implements TextGenerateEvent {
  const factory _CopyContent(final String content) = _$_CopyContent;

  String get content;
  @JsonKey(ignore: true)
  _$$_CopyContentCopyWith<_$_CopyContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TextGenerateState {
  TextGenerateDataState get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TextGenerateDataState data) initial,
    required TResult Function(TextGenerateDataState data) loading,
    required TResult Function(TextGenerateDataState data) success,
    required TResult Function(TextGenerateDataState data, String message)
        failure,
    required TResult Function(TextGenerateDataState data) copiedContent,
    required TResult Function(TextGenerateDataState data) editMode,
    required TResult Function(TextGenerateDataState data) viewMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TextGenerateDataState data)? initial,
    TResult? Function(TextGenerateDataState data)? loading,
    TResult? Function(TextGenerateDataState data)? success,
    TResult? Function(TextGenerateDataState data, String message)? failure,
    TResult? Function(TextGenerateDataState data)? copiedContent,
    TResult? Function(TextGenerateDataState data)? editMode,
    TResult? Function(TextGenerateDataState data)? viewMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TextGenerateDataState data)? initial,
    TResult Function(TextGenerateDataState data)? loading,
    TResult Function(TextGenerateDataState data)? success,
    TResult Function(TextGenerateDataState data, String message)? failure,
    TResult Function(TextGenerateDataState data)? copiedContent,
    TResult Function(TextGenerateDataState data)? editMode,
    TResult Function(TextGenerateDataState data)? viewMode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_CopiedContent value) copiedContent,
    required TResult Function(_EditMode value) editMode,
    required TResult Function(_ViewMode value) viewMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_CopiedContent value)? copiedContent,
    TResult? Function(_EditMode value)? editMode,
    TResult? Function(_ViewMode value)? viewMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_CopiedContent value)? copiedContent,
    TResult Function(_EditMode value)? editMode,
    TResult Function(_ViewMode value)? viewMode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TextGenerateStateCopyWith<TextGenerateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextGenerateStateCopyWith<$Res> {
  factory $TextGenerateStateCopyWith(
          TextGenerateState value, $Res Function(TextGenerateState) then) =
      _$TextGenerateStateCopyWithImpl<$Res, TextGenerateState>;
  @useResult
  $Res call({TextGenerateDataState data});

  $TextGenerateDataStateCopyWith<$Res> get data;
}

/// @nodoc
class _$TextGenerateStateCopyWithImpl<$Res, $Val extends TextGenerateState>
    implements $TextGenerateStateCopyWith<$Res> {
  _$TextGenerateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TextGenerateDataState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TextGenerateDataStateCopyWith<$Res> get data {
    return $TextGenerateDataStateCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $TextGenerateStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TextGenerateDataState data});

  @override
  $TextGenerateDataStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$TextGenerateStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_Initial(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TextGenerateDataState,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial({required this.data}) : super._();

  @override
  final TextGenerateDataState data;

  @override
  String toString() {
    return 'TextGenerateState.initial(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TextGenerateDataState data) initial,
    required TResult Function(TextGenerateDataState data) loading,
    required TResult Function(TextGenerateDataState data) success,
    required TResult Function(TextGenerateDataState data, String message)
        failure,
    required TResult Function(TextGenerateDataState data) copiedContent,
    required TResult Function(TextGenerateDataState data) editMode,
    required TResult Function(TextGenerateDataState data) viewMode,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TextGenerateDataState data)? initial,
    TResult? Function(TextGenerateDataState data)? loading,
    TResult? Function(TextGenerateDataState data)? success,
    TResult? Function(TextGenerateDataState data, String message)? failure,
    TResult? Function(TextGenerateDataState data)? copiedContent,
    TResult? Function(TextGenerateDataState data)? editMode,
    TResult? Function(TextGenerateDataState data)? viewMode,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TextGenerateDataState data)? initial,
    TResult Function(TextGenerateDataState data)? loading,
    TResult Function(TextGenerateDataState data)? success,
    TResult Function(TextGenerateDataState data, String message)? failure,
    TResult Function(TextGenerateDataState data)? copiedContent,
    TResult Function(TextGenerateDataState data)? editMode,
    TResult Function(TextGenerateDataState data)? viewMode,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_CopiedContent value) copiedContent,
    required TResult Function(_EditMode value) editMode,
    required TResult Function(_ViewMode value) viewMode,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_CopiedContent value)? copiedContent,
    TResult? Function(_EditMode value)? editMode,
    TResult? Function(_ViewMode value)? viewMode,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_CopiedContent value)? copiedContent,
    TResult Function(_EditMode value)? editMode,
    TResult Function(_ViewMode value)? viewMode,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends TextGenerateState {
  const factory _Initial({required final TextGenerateDataState data}) =
      _$_Initial;
  const _Initial._() : super._();

  @override
  TextGenerateDataState get data;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res>
    implements $TextGenerateStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TextGenerateDataState data});

  @override
  $TextGenerateDataStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$TextGenerateStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_Loading(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TextGenerateDataState,
    ));
  }
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading({required this.data}) : super._();

  @override
  final TextGenerateDataState data;

  @override
  String toString() {
    return 'TextGenerateState.loading(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loading &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      __$$_LoadingCopyWithImpl<_$_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TextGenerateDataState data) initial,
    required TResult Function(TextGenerateDataState data) loading,
    required TResult Function(TextGenerateDataState data) success,
    required TResult Function(TextGenerateDataState data, String message)
        failure,
    required TResult Function(TextGenerateDataState data) copiedContent,
    required TResult Function(TextGenerateDataState data) editMode,
    required TResult Function(TextGenerateDataState data) viewMode,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TextGenerateDataState data)? initial,
    TResult? Function(TextGenerateDataState data)? loading,
    TResult? Function(TextGenerateDataState data)? success,
    TResult? Function(TextGenerateDataState data, String message)? failure,
    TResult? Function(TextGenerateDataState data)? copiedContent,
    TResult? Function(TextGenerateDataState data)? editMode,
    TResult? Function(TextGenerateDataState data)? viewMode,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TextGenerateDataState data)? initial,
    TResult Function(TextGenerateDataState data)? loading,
    TResult Function(TextGenerateDataState data)? success,
    TResult Function(TextGenerateDataState data, String message)? failure,
    TResult Function(TextGenerateDataState data)? copiedContent,
    TResult Function(TextGenerateDataState data)? editMode,
    TResult Function(TextGenerateDataState data)? viewMode,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_CopiedContent value) copiedContent,
    required TResult Function(_EditMode value) editMode,
    required TResult Function(_ViewMode value) viewMode,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_CopiedContent value)? copiedContent,
    TResult? Function(_EditMode value)? editMode,
    TResult? Function(_ViewMode value)? viewMode,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_CopiedContent value)? copiedContent,
    TResult Function(_EditMode value)? editMode,
    TResult Function(_ViewMode value)? viewMode,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends TextGenerateState {
  const factory _Loading({required final TextGenerateDataState data}) =
      _$_Loading;
  const _Loading._() : super._();

  @override
  TextGenerateDataState get data;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res>
    implements $TextGenerateStateCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TextGenerateDataState data});

  @override
  $TextGenerateDataStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$TextGenerateStateCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_Success(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TextGenerateDataState,
    ));
  }
}

/// @nodoc

class _$_Success extends _Success {
  const _$_Success({required this.data}) : super._();

  @override
  final TextGenerateDataState data;

  @override
  String toString() {
    return 'TextGenerateState.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TextGenerateDataState data) initial,
    required TResult Function(TextGenerateDataState data) loading,
    required TResult Function(TextGenerateDataState data) success,
    required TResult Function(TextGenerateDataState data, String message)
        failure,
    required TResult Function(TextGenerateDataState data) copiedContent,
    required TResult Function(TextGenerateDataState data) editMode,
    required TResult Function(TextGenerateDataState data) viewMode,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TextGenerateDataState data)? initial,
    TResult? Function(TextGenerateDataState data)? loading,
    TResult? Function(TextGenerateDataState data)? success,
    TResult? Function(TextGenerateDataState data, String message)? failure,
    TResult? Function(TextGenerateDataState data)? copiedContent,
    TResult? Function(TextGenerateDataState data)? editMode,
    TResult? Function(TextGenerateDataState data)? viewMode,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TextGenerateDataState data)? initial,
    TResult Function(TextGenerateDataState data)? loading,
    TResult Function(TextGenerateDataState data)? success,
    TResult Function(TextGenerateDataState data, String message)? failure,
    TResult Function(TextGenerateDataState data)? copiedContent,
    TResult Function(TextGenerateDataState data)? editMode,
    TResult Function(TextGenerateDataState data)? viewMode,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_CopiedContent value) copiedContent,
    required TResult Function(_EditMode value) editMode,
    required TResult Function(_ViewMode value) viewMode,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_CopiedContent value)? copiedContent,
    TResult? Function(_EditMode value)? editMode,
    TResult? Function(_ViewMode value)? viewMode,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_CopiedContent value)? copiedContent,
    TResult Function(_EditMode value)? editMode,
    TResult Function(_ViewMode value)? viewMode,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success extends TextGenerateState {
  const factory _Success({required final TextGenerateDataState data}) =
      _$_Success;
  const _Success._() : super._();

  @override
  TextGenerateDataState get data;
  @override
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res>
    implements $TextGenerateStateCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TextGenerateDataState data, String message});

  @override
  $TextGenerateDataStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$TextGenerateStateCopyWithImpl<$Res, _$_Failure>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_Failure(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TextGenerateDataState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Failure extends _Failure {
  const _$_Failure({required this.data, required this.message}) : super._();

  @override
  final TextGenerateDataState data;
  @override
  final String message;

  @override
  String toString() {
    return 'TextGenerateState.failure(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      __$$_FailureCopyWithImpl<_$_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TextGenerateDataState data) initial,
    required TResult Function(TextGenerateDataState data) loading,
    required TResult Function(TextGenerateDataState data) success,
    required TResult Function(TextGenerateDataState data, String message)
        failure,
    required TResult Function(TextGenerateDataState data) copiedContent,
    required TResult Function(TextGenerateDataState data) editMode,
    required TResult Function(TextGenerateDataState data) viewMode,
  }) {
    return failure(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TextGenerateDataState data)? initial,
    TResult? Function(TextGenerateDataState data)? loading,
    TResult? Function(TextGenerateDataState data)? success,
    TResult? Function(TextGenerateDataState data, String message)? failure,
    TResult? Function(TextGenerateDataState data)? copiedContent,
    TResult? Function(TextGenerateDataState data)? editMode,
    TResult? Function(TextGenerateDataState data)? viewMode,
  }) {
    return failure?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TextGenerateDataState data)? initial,
    TResult Function(TextGenerateDataState data)? loading,
    TResult Function(TextGenerateDataState data)? success,
    TResult Function(TextGenerateDataState data, String message)? failure,
    TResult Function(TextGenerateDataState data)? copiedContent,
    TResult Function(TextGenerateDataState data)? editMode,
    TResult Function(TextGenerateDataState data)? viewMode,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_CopiedContent value) copiedContent,
    required TResult Function(_EditMode value) editMode,
    required TResult Function(_ViewMode value) viewMode,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_CopiedContent value)? copiedContent,
    TResult? Function(_EditMode value)? editMode,
    TResult? Function(_ViewMode value)? viewMode,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_CopiedContent value)? copiedContent,
    TResult Function(_EditMode value)? editMode,
    TResult Function(_ViewMode value)? viewMode,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure extends TextGenerateState {
  const factory _Failure(
      {required final TextGenerateDataState data,
      required final String message}) = _$_Failure;
  const _Failure._() : super._();

  @override
  TextGenerateDataState get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CopiedContentCopyWith<$Res>
    implements $TextGenerateStateCopyWith<$Res> {
  factory _$$_CopiedContentCopyWith(
          _$_CopiedContent value, $Res Function(_$_CopiedContent) then) =
      __$$_CopiedContentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TextGenerateDataState data});

  @override
  $TextGenerateDataStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_CopiedContentCopyWithImpl<$Res>
    extends _$TextGenerateStateCopyWithImpl<$Res, _$_CopiedContent>
    implements _$$_CopiedContentCopyWith<$Res> {
  __$$_CopiedContentCopyWithImpl(
      _$_CopiedContent _value, $Res Function(_$_CopiedContent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_CopiedContent(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TextGenerateDataState,
    ));
  }
}

/// @nodoc

class _$_CopiedContent extends _CopiedContent {
  const _$_CopiedContent({required this.data}) : super._();

  @override
  final TextGenerateDataState data;

  @override
  String toString() {
    return 'TextGenerateState.copiedContent(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CopiedContent &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CopiedContentCopyWith<_$_CopiedContent> get copyWith =>
      __$$_CopiedContentCopyWithImpl<_$_CopiedContent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TextGenerateDataState data) initial,
    required TResult Function(TextGenerateDataState data) loading,
    required TResult Function(TextGenerateDataState data) success,
    required TResult Function(TextGenerateDataState data, String message)
        failure,
    required TResult Function(TextGenerateDataState data) copiedContent,
    required TResult Function(TextGenerateDataState data) editMode,
    required TResult Function(TextGenerateDataState data) viewMode,
  }) {
    return copiedContent(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TextGenerateDataState data)? initial,
    TResult? Function(TextGenerateDataState data)? loading,
    TResult? Function(TextGenerateDataState data)? success,
    TResult? Function(TextGenerateDataState data, String message)? failure,
    TResult? Function(TextGenerateDataState data)? copiedContent,
    TResult? Function(TextGenerateDataState data)? editMode,
    TResult? Function(TextGenerateDataState data)? viewMode,
  }) {
    return copiedContent?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TextGenerateDataState data)? initial,
    TResult Function(TextGenerateDataState data)? loading,
    TResult Function(TextGenerateDataState data)? success,
    TResult Function(TextGenerateDataState data, String message)? failure,
    TResult Function(TextGenerateDataState data)? copiedContent,
    TResult Function(TextGenerateDataState data)? editMode,
    TResult Function(TextGenerateDataState data)? viewMode,
    required TResult orElse(),
  }) {
    if (copiedContent != null) {
      return copiedContent(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_CopiedContent value) copiedContent,
    required TResult Function(_EditMode value) editMode,
    required TResult Function(_ViewMode value) viewMode,
  }) {
    return copiedContent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_CopiedContent value)? copiedContent,
    TResult? Function(_EditMode value)? editMode,
    TResult? Function(_ViewMode value)? viewMode,
  }) {
    return copiedContent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_CopiedContent value)? copiedContent,
    TResult Function(_EditMode value)? editMode,
    TResult Function(_ViewMode value)? viewMode,
    required TResult orElse(),
  }) {
    if (copiedContent != null) {
      return copiedContent(this);
    }
    return orElse();
  }
}

abstract class _CopiedContent extends TextGenerateState {
  const factory _CopiedContent({required final TextGenerateDataState data}) =
      _$_CopiedContent;
  const _CopiedContent._() : super._();

  @override
  TextGenerateDataState get data;
  @override
  @JsonKey(ignore: true)
  _$$_CopiedContentCopyWith<_$_CopiedContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EditModeCopyWith<$Res>
    implements $TextGenerateStateCopyWith<$Res> {
  factory _$$_EditModeCopyWith(
          _$_EditMode value, $Res Function(_$_EditMode) then) =
      __$$_EditModeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TextGenerateDataState data});

  @override
  $TextGenerateDataStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_EditModeCopyWithImpl<$Res>
    extends _$TextGenerateStateCopyWithImpl<$Res, _$_EditMode>
    implements _$$_EditModeCopyWith<$Res> {
  __$$_EditModeCopyWithImpl(
      _$_EditMode _value, $Res Function(_$_EditMode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_EditMode(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TextGenerateDataState,
    ));
  }
}

/// @nodoc

class _$_EditMode extends _EditMode {
  const _$_EditMode({required this.data}) : super._();

  @override
  final TextGenerateDataState data;

  @override
  String toString() {
    return 'TextGenerateState.editMode(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditMode &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditModeCopyWith<_$_EditMode> get copyWith =>
      __$$_EditModeCopyWithImpl<_$_EditMode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TextGenerateDataState data) initial,
    required TResult Function(TextGenerateDataState data) loading,
    required TResult Function(TextGenerateDataState data) success,
    required TResult Function(TextGenerateDataState data, String message)
        failure,
    required TResult Function(TextGenerateDataState data) copiedContent,
    required TResult Function(TextGenerateDataState data) editMode,
    required TResult Function(TextGenerateDataState data) viewMode,
  }) {
    return editMode(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TextGenerateDataState data)? initial,
    TResult? Function(TextGenerateDataState data)? loading,
    TResult? Function(TextGenerateDataState data)? success,
    TResult? Function(TextGenerateDataState data, String message)? failure,
    TResult? Function(TextGenerateDataState data)? copiedContent,
    TResult? Function(TextGenerateDataState data)? editMode,
    TResult? Function(TextGenerateDataState data)? viewMode,
  }) {
    return editMode?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TextGenerateDataState data)? initial,
    TResult Function(TextGenerateDataState data)? loading,
    TResult Function(TextGenerateDataState data)? success,
    TResult Function(TextGenerateDataState data, String message)? failure,
    TResult Function(TextGenerateDataState data)? copiedContent,
    TResult Function(TextGenerateDataState data)? editMode,
    TResult Function(TextGenerateDataState data)? viewMode,
    required TResult orElse(),
  }) {
    if (editMode != null) {
      return editMode(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_CopiedContent value) copiedContent,
    required TResult Function(_EditMode value) editMode,
    required TResult Function(_ViewMode value) viewMode,
  }) {
    return editMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_CopiedContent value)? copiedContent,
    TResult? Function(_EditMode value)? editMode,
    TResult? Function(_ViewMode value)? viewMode,
  }) {
    return editMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_CopiedContent value)? copiedContent,
    TResult Function(_EditMode value)? editMode,
    TResult Function(_ViewMode value)? viewMode,
    required TResult orElse(),
  }) {
    if (editMode != null) {
      return editMode(this);
    }
    return orElse();
  }
}

abstract class _EditMode extends TextGenerateState {
  const factory _EditMode({required final TextGenerateDataState data}) =
      _$_EditMode;
  const _EditMode._() : super._();

  @override
  TextGenerateDataState get data;
  @override
  @JsonKey(ignore: true)
  _$$_EditModeCopyWith<_$_EditMode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ViewModeCopyWith<$Res>
    implements $TextGenerateStateCopyWith<$Res> {
  factory _$$_ViewModeCopyWith(
          _$_ViewMode value, $Res Function(_$_ViewMode) then) =
      __$$_ViewModeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TextGenerateDataState data});

  @override
  $TextGenerateDataStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ViewModeCopyWithImpl<$Res>
    extends _$TextGenerateStateCopyWithImpl<$Res, _$_ViewMode>
    implements _$$_ViewModeCopyWith<$Res> {
  __$$_ViewModeCopyWithImpl(
      _$_ViewMode _value, $Res Function(_$_ViewMode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_ViewMode(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TextGenerateDataState,
    ));
  }
}

/// @nodoc

class _$_ViewMode extends _ViewMode {
  const _$_ViewMode({required this.data}) : super._();

  @override
  final TextGenerateDataState data;

  @override
  String toString() {
    return 'TextGenerateState.viewMode(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ViewMode &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ViewModeCopyWith<_$_ViewMode> get copyWith =>
      __$$_ViewModeCopyWithImpl<_$_ViewMode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TextGenerateDataState data) initial,
    required TResult Function(TextGenerateDataState data) loading,
    required TResult Function(TextGenerateDataState data) success,
    required TResult Function(TextGenerateDataState data, String message)
        failure,
    required TResult Function(TextGenerateDataState data) copiedContent,
    required TResult Function(TextGenerateDataState data) editMode,
    required TResult Function(TextGenerateDataState data) viewMode,
  }) {
    return viewMode(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TextGenerateDataState data)? initial,
    TResult? Function(TextGenerateDataState data)? loading,
    TResult? Function(TextGenerateDataState data)? success,
    TResult? Function(TextGenerateDataState data, String message)? failure,
    TResult? Function(TextGenerateDataState data)? copiedContent,
    TResult? Function(TextGenerateDataState data)? editMode,
    TResult? Function(TextGenerateDataState data)? viewMode,
  }) {
    return viewMode?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TextGenerateDataState data)? initial,
    TResult Function(TextGenerateDataState data)? loading,
    TResult Function(TextGenerateDataState data)? success,
    TResult Function(TextGenerateDataState data, String message)? failure,
    TResult Function(TextGenerateDataState data)? copiedContent,
    TResult Function(TextGenerateDataState data)? editMode,
    TResult Function(TextGenerateDataState data)? viewMode,
    required TResult orElse(),
  }) {
    if (viewMode != null) {
      return viewMode(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_CopiedContent value) copiedContent,
    required TResult Function(_EditMode value) editMode,
    required TResult Function(_ViewMode value) viewMode,
  }) {
    return viewMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_CopiedContent value)? copiedContent,
    TResult? Function(_EditMode value)? editMode,
    TResult? Function(_ViewMode value)? viewMode,
  }) {
    return viewMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_CopiedContent value)? copiedContent,
    TResult Function(_EditMode value)? editMode,
    TResult Function(_ViewMode value)? viewMode,
    required TResult orElse(),
  }) {
    if (viewMode != null) {
      return viewMode(this);
    }
    return orElse();
  }
}

abstract class _ViewMode extends TextGenerateState {
  const factory _ViewMode({required final TextGenerateDataState data}) =
      _$_ViewMode;
  const _ViewMode._() : super._();

  @override
  TextGenerateDataState get data;
  @override
  @JsonKey(ignore: true)
  _$$_ViewModeCopyWith<_$_ViewMode> get copyWith =>
      throw _privateConstructorUsedError;
}
