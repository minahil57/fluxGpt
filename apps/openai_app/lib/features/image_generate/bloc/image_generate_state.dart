part of 'image_generate_bloc.dart';

@freezed
class ImageGenerateState with _$ImageGenerateState {
  const factory ImageGenerateState.initial({
    @Default(ImageGenerateDataState()) ImageGenerateDataState data,
  }) = _Initial;

  const factory ImageGenerateState.loading({
    required ImageGenerateDataState data,
  }) = _Loading;

  const factory ImageGenerateState.success({
    required ImageGenerateDataState data,
    required List<String> images,
  }) = _Success;

  const factory ImageGenerateState.error({
    required ImageGenerateDataState data,
    required String errorMessage,
  }) = _Error;
}
