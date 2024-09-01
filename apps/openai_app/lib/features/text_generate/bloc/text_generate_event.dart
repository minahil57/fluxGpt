part of 'text_generate_bloc.dart';

@freezed
class TextGenerateEvent with _$TextGenerateEvent {
  const factory TextGenerateEvent.started() = _Started;

  const factory TextGenerateEvent.useCaseChanged(
      {required TextUseCase useCase}) = _UseCaseChanged;

  const factory TextGenerateEvent.generateContent(
      {required List<String> dataFields}) = _GenerateContent;

  const factory TextGenerateEvent.changeToEditMode() = _ChangeToEditMode;

  const factory TextGenerateEvent.changeToViewMode() = _ChangeToViewMode;

  const factory TextGenerateEvent.textChanged(String text) = _TextChanged;

  const factory TextGenerateEvent.completeAnimatedText() =
      _CompleteAnimatedText;

  const factory TextGenerateEvent.copyContent(String content) = _CopyContent;
}
