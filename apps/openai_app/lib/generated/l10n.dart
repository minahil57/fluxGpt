// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Share`
  String get share {
    return Intl.message(
      'Share',
      name: 'share',
      desc: '',
      args: [],
    );
  }

  /// `Download`
  String get download {
    return Intl.message(
      'Download',
      name: 'download',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Please confirm if you wish to proceed with the deletion of this item. You can't undo this action.`
  String get confirmDelete {
    return Intl.message(
      'Please confirm if you wish to proceed with the deletion of this item. You can\'t undo this action.',
      name: 'confirmDelete',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you wish to delete this item?`
  String get confirmDeleteItem {
    return Intl.message(
      'Are you sure you wish to delete this item?',
      name: 'confirmDeleteItem',
      desc: '',
      args: [],
    );
  }

  /// `Chat GPT`
  String get chatGPT {
    return Intl.message(
      'Chat GPT',
      name: 'chatGPT',
      desc: '',
      args: [],
    );
  }

  /// `Regenerate response`
  String get regenerateResponse {
    return Intl.message(
      'Regenerate response',
      name: 'regenerateResponse',
      desc: '',
      args: [],
    );
  }

  /// `Clear conversation`
  String get clearConversation {
    return Intl.message(
      'Clear conversation',
      name: 'clearConversation',
      desc: '',
      args: [],
    );
  }

  /// `Copy`
  String get copy {
    return Intl.message(
      'Copy',
      name: 'copy',
      desc: '',
      args: [],
    );
  }

  /// `Copied content to clipboard`
  String get copiedToClipboard {
    return Intl.message(
      'Copied content to clipboard',
      name: 'copiedToClipboard',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message(
      'Delete',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `Listening...`
  String get listening {
    return Intl.message(
      'Listening...',
      name: 'listening',
      desc: '',
      args: [],
    );
  }

  /// `Type a message...`
  String get typeAMessage {
    return Intl.message(
      'Type a message...',
      name: 'typeAMessage',
      desc: '',
      args: [],
    );
  }

  /// `Speech not available`
  String get speechNotAvailable {
    return Intl.message(
      'Speech not available',
      name: 'speechNotAvailable',
      desc: '',
      args: [],
    );
  }

  /// `Tap the mic to talk`
  String get tapTheMicToTalk {
    return Intl.message(
      'Tap the mic to talk',
      name: 'tapTheMicToTalk',
      desc: '',
      args: [],
    );
  }

  /// `Chat with Bot`
  String get chatWithBot {
    return Intl.message(
      'Chat with Bot',
      name: 'chatWithBot',
      desc: '',
      args: [],
    );
  }

  /// `Image generate`
  String get imageGenerate {
    return Intl.message(
      'Image generate',
      name: 'imageGenerate',
      desc: '',
      args: [],
    );
  }

  /// `Text generate`
  String get textGenerate {
    return Intl.message(
      'Text generate',
      name: 'textGenerate',
      desc: '',
      args: [],
    );
  }

  /// `Options`
  String get options {
    return Intl.message(
      'Options',
      name: 'options',
      desc: '',
      args: [],
    );
  }

  /// `Image size`
  String get imageSize {
    return Intl.message(
      'Image size',
      name: 'imageSize',
      desc: '',
      args: [],
    );
  }

  /// `View type`
  String get viewType {
    return Intl.message(
      'View type',
      name: 'viewType',
      desc: '',
      args: [],
    );
  }

  /// `No image generate`
  String get noImageGenerate {
    return Intl.message(
      'No image generate',
      name: 'noImageGenerate',
      desc: '',
      args: [],
    );
  }

  /// `More options`
  String get moreOptions {
    return Intl.message(
      'More options',
      name: 'moreOptions',
      desc: '',
      args: [],
    );
  }

  /// `Generate`
  String get generate {
    return Intl.message(
      'Generate',
      name: 'generate',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong! Please try again later. Thank you so much!`
  String get somethingWhenWrong {
    return Intl.message(
      'Something went wrong! Please try again later. Thank you so much!',
      name: 'somethingWhenWrong',
      desc: '',
      args: [],
    );
  }

  /// `Page`
  String get page {
    return Intl.message(
      'Page',
      name: 'page',
      desc: '',
      args: [],
    );
  }

  /// `Grid`
  String get grid {
    return Intl.message(
      'Grid',
      name: 'grid',
      desc: '',
      args: [],
    );
  }

  /// `Number of images`
  String get numberOfImages {
    return Intl.message(
      'Number of images',
      name: 'numberOfImages',
      desc: '',
      args: [],
    );
  }

  /// `The number of images to generate. Must be between 1 and 10.`
  String get numberOfImagesCondition {
    return Intl.message(
      'The number of images to generate. Must be between 1 and 10.',
      name: 'numberOfImagesCondition',
      desc: '',
      args: [],
    );
  }

  /// `Please fill in all fields`
  String get pleaseInputFillAllFields {
    return Intl.message(
      'Please fill in all fields',
      name: 'pleaseInputFillAllFields',
      desc: '',
      args: [],
    );
  }

  /// `Failed to generate`
  String get failedToGenerate {
    return Intl.message(
      'Failed to generate',
      name: 'failedToGenerate',
      desc: '',
      args: [],
    );
  }

  /// `Clear`
  String get clear {
    return Intl.message(
      'Clear',
      name: 'clear',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get edit {
    return Intl.message(
      'Edit',
      name: 'edit',
      desc: '',
      args: [],
    );
  }

  /// `Please check your connection and try again!`
  String get pleaseCheckConnection {
    return Intl.message(
      'Please check your connection and try again!',
      name: 'pleaseCheckConnection',
      desc: '',
      args: [],
    );
  }

  /// `Clear content`
  String get clearContent {
    return Intl.message(
      'Clear content',
      name: 'clearContent',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure to clear content?`
  String get clearConfirm {
    return Intl.message(
      'Are you sure to clear content?',
      name: 'clearConfirm',
      desc: '',
      args: [],
    );
  }

  /// `Choose use case`
  String get chooseUseCase {
    return Intl.message(
      'Choose use case',
      name: 'chooseUseCase',
      desc: '',
      args: [],
    );
  }

  /// `View`
  String get view {
    return Intl.message(
      'View',
      name: 'view',
      desc: '',
      args: [],
    );
  }

  /// `Write`
  String get write {
    return Intl.message(
      'Write',
      name: 'write',
      desc: '',
      args: [],
    );
  }

  /// `Style`
  String get style {
    return Intl.message(
      'Style',
      name: 'style',
      desc: '',
      args: [],
    );
  }

  /// `Choose style for your image`
  String get choseStyle {
    return Intl.message(
      'Choose style for your image',
      name: 'choseStyle',
      desc: '',
      args: [],
    );
  }

  /// `Medium`
  String get medium {
    return Intl.message(
      'Medium',
      name: 'medium',
      desc: '',
      args: [],
    );
  }

  /// `Choose medium for your image`
  String get chooseMedium {
    return Intl.message(
      'Choose medium for your image',
      name: 'chooseMedium',
      desc: '',
      args: [],
    );
  }

  /// `Mood`
  String get mood {
    return Intl.message(
      'Mood',
      name: 'mood',
      desc: '',
      args: [],
    );
  }

  /// `Choose mood for your image`
  String get chooseMood {
    return Intl.message(
      'Choose mood for your image',
      name: 'chooseMood',
      desc: '',
      args: [],
    );
  }

  /// `Artist`
  String get artist {
    return Intl.message(
      'Artist',
      name: 'artist',
      desc: '',
      args: [],
    );
  }

  /// `Choose artist for your image`
  String get chooseArtist {
    return Intl.message(
      'Choose artist for your image',
      name: 'chooseArtist',
      desc: '',
      args: [],
    );
  }

  /// `Detail`
  String get detail {
    return Intl.message(
      'Detail',
      name: 'detail',
      desc: '',
      args: [],
    );
  }

  /// `Choose detail for your image`
  String get chooseDetail {
    return Intl.message(
      'Choose detail for your image',
      name: 'chooseDetail',
      desc: '',
      args: [],
    );
  }

  /// `Reset Settings`
  String get resetSettings {
    return Intl.message(
      'Reset Settings',
      name: 'resetSettings',
      desc: '',
      args: [],
    );
  }

  /// `Apply`
  String get apply {
    return Intl.message(
      'Apply',
      name: 'apply',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
      Locale.fromSubtags(languageCode: 'az'),
      Locale.fromSubtags(languageCode: 'bn'),
      Locale.fromSubtags(languageCode: 'bs'),
      Locale.fromSubtags(languageCode: 'cs'),
      Locale.fromSubtags(languageCode: 'da'),
      Locale.fromSubtags(languageCode: 'de'),
      Locale.fromSubtags(languageCode: 'el'),
      Locale.fromSubtags(languageCode: 'es'),
      Locale.fromSubtags(languageCode: 'fa'),
      Locale.fromSubtags(languageCode: 'fi'),
      Locale.fromSubtags(languageCode: 'fr'),
      Locale.fromSubtags(languageCode: 'he'),
      Locale.fromSubtags(languageCode: 'hi'),
      Locale.fromSubtags(languageCode: 'hu'),
      Locale.fromSubtags(languageCode: 'id'),
      Locale.fromSubtags(languageCode: 'it'),
      Locale.fromSubtags(languageCode: 'ja'),
      Locale.fromSubtags(languageCode: 'km'),
      Locale.fromSubtags(languageCode: 'kn'),
      Locale.fromSubtags(languageCode: 'ko'),
      Locale.fromSubtags(languageCode: 'ku'),
      Locale.fromSubtags(languageCode: 'lo'),
      Locale.fromSubtags(languageCode: 'lt'),
      Locale.fromSubtags(languageCode: 'mr'),
      Locale.fromSubtags(languageCode: 'ms'),
      Locale.fromSubtags(languageCode: 'my'),
      Locale.fromSubtags(languageCode: 'nl'),
      Locale.fromSubtags(languageCode: 'pl'),
      Locale.fromSubtags(languageCode: 'pt'),
      Locale.fromSubtags(languageCode: 'ro'),
      Locale.fromSubtags(languageCode: 'ru'),
      Locale.fromSubtags(languageCode: 'sk'),
      Locale.fromSubtags(languageCode: 'sq'),
      Locale.fromSubtags(languageCode: 'sr'),
      Locale.fromSubtags(languageCode: 'sv'),
      Locale.fromSubtags(languageCode: 'sw'),
      Locale.fromSubtags(languageCode: 'ta'),
      Locale.fromSubtags(languageCode: 'th'),
      Locale.fromSubtags(languageCode: 'ti'),
      Locale.fromSubtags(languageCode: 'tr'),
      Locale.fromSubtags(languageCode: 'uk'),
      Locale.fromSubtags(languageCode: 'ur'),
      Locale.fromSubtags(languageCode: 'uz'),
      Locale.fromSubtags(languageCode: 'vi'),
      Locale.fromSubtags(languageCode: 'zh'),
      Locale.fromSubtags(languageCode: 'zh', countryCode: 'CN'),
      Locale.fromSubtags(languageCode: 'zh', countryCode: 'TW'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
