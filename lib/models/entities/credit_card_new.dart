const _totalNumberOfCard = 16;

class CreditCardNew {
  final String number;
  final String name;
  final String expiryMonth;
  final String expiryYear;
  final String cvc;

  CreditCardNew({
    this.number = '',
    this.name = '',
    this.expiryMonth = '',
    this.expiryYear = '',
    this.cvc = '',
  });

  String get expiryDate => '$expiryMonth/$expiryYear';

  Map<String, dynamic> toJson() {
    return {
      'number': number,
      'name': name,
      'exp_month': expiryMonth,
      'exp_year': expiryYear,
      'cvc': cvc,
    };
  }

  CreditCardNew copyWith({
    String? number,
    String? name,
    String? expiryMonth,
    String? expiryYear,
    String? cvc,
  }) {
    return CreditCardNew(
      number: number ?? this.number,
      name: name ?? this.name,
      expiryMonth: expiryMonth ?? this.expiryMonth,
      expiryYear: expiryYear ?? this.expiryYear,
      cvc: cvc ?? this.cvc,
    );
  }

  CreditCardNew copyWithExpireDate(String expireDate) {
    final expDate = expireDate.split('/');
    return copyWith(
      expiryMonth: expDate.first,
      expiryYear: expDate.last,
    );
  }

  bool isValid() =>
      isValidNumber() && isValidName() && isValidExpiryDate() && isValidCvc();

  bool isValidNumber() {
    final value = number.replaceAll(' ', '');
    if (value.isEmpty) {
      // return 'Card number is required';
      return false;
    }
    if (value.length < _totalNumberOfCard) {
      // return 'Invalid card number';
      return false;
    }
    return true;
  }

  bool isValidName() {
    final value = name.replaceAll(' ', '');
    if (value.isEmpty) {
      // return 'Card holder name is required';
      return false;
    }
    return true;
  }

  bool isValidExpiryDate() {
    if (expiryMonth.isEmpty || expiryYear.isEmpty) {
      // return 'Expiry date is required';
      return false;
    }
    final month = int.tryParse(expiryMonth) ?? 0;
    final year = int.tryParse(expiryYear) ?? 0;
    if (month < 1 || month > 12) {
      // return 'Invalid expiry date';
      return false;
    }
    if (year < DateTime.now().year % 100) {
      // return 'Invalid expiry date';
      return false;
    }
    return true;
  }

  bool isValidCvc() {
    final value = cvc.replaceAll(' ', '');
    if (value.isEmpty) {
      // return 'CVV is required';
      return false;
    }
    if (value.length < 3) {
      // return 'Invalid CVV';
      return false;
    }
    return true;
  }
}
