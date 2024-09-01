part of '../boxes.dart';

/// Enable encryption for user-related data.
class BiometricsBox extends FluxBox with EncryptionMixin {
  static final _instance = BiometricsBox._internal();

  factory BiometricsBox() => _instance;

  BiometricsBox._internal();

  @override
  String get boxKey => BoxKeys.hiveBiometricsBox;

  @override
  String get encryptionKeyName => BoxKeys.hiveUserBiometricsEncryptionKey;
}
