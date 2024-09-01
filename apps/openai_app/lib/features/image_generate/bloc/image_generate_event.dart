part of 'image_generate_bloc.dart';

@freezed
class ImageGenerateEvent with _$ImageGenerateEvent {
  const factory ImageGenerateEvent.started() = _Started;

  const factory ImageGenerateEvent.textChanged({required String text}) =
      _TextChanged;

  const factory ImageGenerateEvent.imageSizeChanged(
      {required ImageSize imageSize}) = _ImageSizeChanged;

  const factory ImageGenerateEvent.generateImage({
    required String prompt,
    required ImageGenerateOptionPayload optionPayload,
  }) = _GenerateImage;

  const factory ImageGenerateEvent.imageViewChanged(
      {required ViewType viewType}) = _ImageViewChanged;
}
