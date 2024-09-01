part of 'text_generate_bloc.dart';

@freezed
class TextGenerateState with _$TextGenerateState {
  const TextGenerateState._();

  const factory TextGenerateState.initial({
    required TextGenerateDataState data,
  }) = _Initial;

  const factory TextGenerateState.loading({
    required TextGenerateDataState data,
  }) = _Loading;

  const factory TextGenerateState.success({
    required TextGenerateDataState data,
  }) = _Success;

  const factory TextGenerateState.failure({
    required TextGenerateDataState data,
    required String message,
  }) = _Failure;

  const factory TextGenerateState.copiedContent({
    required TextGenerateDataState data,
  }) = _CopiedContent;

  const factory TextGenerateState.editMode({
    required TextGenerateDataState data,
  }) = _EditMode;

  const factory TextGenerateState.viewMode({
    required TextGenerateDataState data,
  }) = _ViewMode;

  bool get allowCopy => data.content.isNotEmpty && data.isCompleteAnimatedText;

  bool get allowClear => allowCopy;

  bool get allowEdit => data.content.isNotEmpty && data.isCompleteAnimatedText;
}
