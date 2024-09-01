class BankAccountItem {
  String? accountName;
  String? accountNumber;
  String? bankName;
  String? sortCode;
  String? iban;
  String? bic;

  BankAccountItem.fromJson(Map parsedJson) {
    accountName = parsedJson['account_name'];
    accountNumber = parsedJson['account_number'];
    bankName = parsedJson['bank_name'];
    sortCode = parsedJson['sort_code'];
    iban = parsedJson['iban'];
    bic = parsedJson['bic'];
  }
}
