import 'package:collection/collection.dart';

class TransactionShopify {
  final String amount;
  final TransactionStatus? status;
  final bool test;

  TransactionShopify({
    required this.amount,
    required this.status,
    required this.test,
  });

  factory TransactionShopify.fromJson(Map<String, dynamic> json) {
    return TransactionShopify(
      amount: json['amount']['amount'],
      status: TransactionStatus.values.firstWhereOrNull(
          (element) => element.name.toUpperCase() == json['statusV2']),
      test: json['test'],
    );
  }
}

enum TransactionStatus { error, failure, pending, success }
