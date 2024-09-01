import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../models/entities/credit_card_new.dart';
import '../../../widgets/animation/animation_flip.dart';
import '../../../widgets/common/flux_image.dart';

class CreditCardPayment extends StatefulWidget {
  final Function(CreditCardNew card)? onFinish;

  const CreditCardPayment({this.onFinish});

  @override
  State<StatefulWidget> createState() {
    return _CreditCardPaymentState();
  }
}

class _CreditCardPaymentState extends State<CreditCardPayment> {
  ValueNotifier<CreditCardNew> cardNotifier =
      ValueNotifier<CreditCardNew>(CreditCardNew());

  set number(String value) => cardNotifier.value =
      cardNotifier.value.copyWith(number: value.replaceAll(' ', ''));

  String get number => cardNotifier.value.number;

  set name(String value) =>
      cardNotifier.value = cardNotifier.value.copyWith(name: value);

  String get name => cardNotifier.value.name;

  set expiryDate(String value) =>
      cardNotifier.value = cardNotifier.value.copyWithExpireDate(value);

  String get expiryDate => cardNotifier.value.expiryDate;

  set cvc(String value) =>
      cardNotifier.value = cardNotifier.value.copyWith(cvc: value);

  String get cvc => cardNotifier.value.cvc;

  void onPayment() {
    if (cardNotifier.value.isValid()) {
      widget.onFinish?.call(cardNotifier.value);
    }
  }

  final textStyle = const TextStyle(
    color: Colors.white,
    fontSize: 18,
    fontWeight: FontWeight.w700,
  );

  final hintStyle = const TextStyle(
    color: Colors.white54,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          height: 6,
          width: 24,
          margin: const EdgeInsets.only(top: 8),
          decoration: BoxDecoration(
            color: Colors.black,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        Card(
          margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          color: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 6,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const FluxImage(
                            imageUrl: 'assets/icons/credit_cards/chip_card.png',
                            width: 30,
                            height: 30,
                          ),
                          const SizedBox(height: 16),
                          TextField(
                            style: textStyle,
                            autofocus: true,
                            autocorrect: false,
                            decoration: InputDecoration(
                              isDense: true,
                              contentPadding: const EdgeInsets.all(0),
                              hintText: '1234 1234 1234 1234',
                              hintStyle: hintStyle,
                              border: InputBorder.none,
                            ),
                            // If use this option, the keyboard will not show number keyboard
                            // autofillHints: const [
                            //   AutofillHints.creditCardNumber
                            // ],
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              LengthLimitingTextInputFormatter(16),
                              _CardNumberFormatter(),
                            ],
                            onChanged: (value) => number = value,
                          ),
                          const SizedBox(height: 8),
                          TextField(
                            style: textStyle,
                            autocorrect: false,
                            autofillHints: const [AutofillHints.creditCardName],
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              isDense: true,
                              contentPadding: const EdgeInsets.all(0),
                              hintText: 'Name on card',
                              hintStyle: hintStyle,
                              border: InputBorder.none,
                            ),
                            onChanged: (value) => name = value,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const FluxImage(
                            imageUrl:
                                'assets/icons/credit_cards/contactless.png',
                            width: 24,
                            height: 24,
                            color: Colors.white,
                          ),
                          const SizedBox(height: 6),
                          ValueListenableBuilder<CreditCardNew>(
                            valueListenable: cardNotifier,
                            builder: (context, value, child) {
                              final currentCardType =
                                  CardUtils.getCardTypeFrmNumber(value.number);
                              return AnimationFlip(
                                showFront: !currentCardType.isSupportIcon,
                                frontWidget: child!,
                                rearWidget: ColoredBox(
                                  color: Colors.black,
                                  child: CardUtils.getCardIcon(currentCardType),
                                ),
                              );
                            },
                            child: ColoredBox(
                              color: Colors.black,
                              child: CardUtils.getCardIcon(CardType.others),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                // const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        style: textStyle,
                        autocorrect: false,
                        autofillHints: const [
                          AutofillHints.creditCardExpirationDate
                        ],
                        decoration: InputDecoration(
                          isDense: true,
                          hintText: 'MM/YY',
                          hintStyle: hintStyle,
                          border: InputBorder.none,
                        ),
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(4),
                          _CardMonthInputFormatter(),
                        ],
                        onChanged: (value) => expiryDate = value,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        style: textStyle,
                        autocorrect: false,
                        autofillHints: const [
                          AutofillHints.creditCardSecurityCode
                        ],
                        decoration: InputDecoration(
                          isDense: true,
                          hintText: 'CVV',
                          hintStyle: hintStyle,
                          border: InputBorder.none,
                        ),
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(4),
                        ],
                        onChanged: (value) => cvc = value,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        // Create a button to start the payment flow
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SizedBox(
            width: double.infinity,
            child: ValueListenableBuilder<CreditCardNew>(
              valueListenable: cardNotifier,
              builder: (context, card, child) {
                return ElevatedButton(
                  onPressed: card.isValid() ? onPayment : null,
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black87,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: child,
                );
              },
              child: const Text(
                'PAY NOW',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}

class _CardNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    var inputText = newValue.text;

    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }

    var bufferString = StringBuffer();
    for (var i = 0; i < inputText.length; i++) {
      bufferString.write(inputText[i]);
      var nonZeroIndexValue = i + 1;
      if (nonZeroIndexValue % 4 == 0 && nonZeroIndexValue != inputText.length) {
        bufferString.write(' ');
      }
    }

    var string = bufferString.toString();
    return newValue.copyWith(
      text: string,
      selection: TextSelection.collapsed(
        offset: string.length,
      ),
    );
  }
}

class _CardMonthInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    var inputText = newValue.text;

    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }

    var bufferString = StringBuffer();
    for (var i = 0; i < inputText.length; i++) {
      bufferString.write(inputText[i]);
      var nonZeroIndexValue = i + 1;
      if (nonZeroIndexValue % 2 == 0 && nonZeroIndexValue != inputText.length) {
        bufferString.write('/');
      }
    }

    var string = bufferString.toString();
    return newValue.copyWith(
      text: string,
      selection: TextSelection.collapsed(
        offset: string.length,
      ),
    );
  }
}

class CardUtils {
  static CardType getCardTypeFrmNumber(String input) {
    CardType cardType;
    if (input.startsWith(RegExp(
        r'((5[1-5])|(222[1-9]|22[3-9][0-9]|2[3-6][0-9]{2}|27[01][0-9]|2720))'))) {
      cardType = CardType.master;
    } else if (input.startsWith(RegExp(r'[4]'))) {
      cardType = CardType.visa;
    } else if (input.startsWith(RegExp(r'((506(0|1))|(507(8|9))|(6500))'))) {
      cardType = CardType.verve;
    } else if (input.startsWith(RegExp(r'((34)|(37))'))) {
      cardType = CardType.americanExpress;
    } else if (input.startsWith(RegExp(r'((6[45])|(6011))'))) {
      cardType = CardType.discover;
    } else if (input.startsWith(RegExp(r'((30[0-5])|(3[89])|(36)|(3095))'))) {
      cardType = CardType.dinersClub;
    } else if (input.startsWith(RegExp(r'(352[89]|35[3-8][0-9])'))) {
      cardType = CardType.jcb;
    } else if (input.length <= 8) {
      cardType = CardType.others;
    } else {
      cardType = CardType.invalid;
    }
    return cardType;
  }

  static Widget getCardIcon(CardType? cardType) {
    var icon = '';
    switch (cardType) {
      case CardType.visa:
        icon = 'assets/icons/credit_cards/visa.svg';
        break;

      case CardType.americanExpress:
        icon = 'assets/icons/credit_cards/amex.svg';
        break;

      case CardType.master:
        icon = 'assets/icons/credit_cards/mastercard.svg';
        break;

      case CardType.discover:
        icon = 'assets/icons/credit_cards/discover.svg';
        break;

      default:
        icon = '';
        break;
    }

    if (icon.isEmpty) {
      return const Icon(
        Icons.credit_card,
        size: 60,
        color: Colors.white54,
      );
    }

    return FluxImage(
      imageUrl: icon,
      height: 60,
      width: 70,
      color: cardType != CardType.master ? Colors.white : null,
    );
  }
}

enum CardType {
  master,
  visa,
  verve,
  discover,
  americanExpress,
  dinersClub,
  jcb,
  others,
  invalid;

  bool get isSupportIcon => [
        CardType.master,
        CardType.visa,
        CardType.americanExpress,
        CardType.discover,
      ].contains(this);
}
