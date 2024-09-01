import 'package:inspireui/widgets/coupon_card.dart';

import '../../common/constants.dart';
import '../entities/address.dart';
import '../order/order.dart';

class CheckoutCart {
  final dynamic id;
  final String? webUrl;
  final double? subtotalPrice;
  final double? totalTax;
  final double? totalPrice;
  final double? paymentDue;
  final Coupon? coupon;
  final Address? shippingAddress;
  final String? currencyCode;
  final ShippingLine? shippingLine;
  final List<ProductItem>? lineItems;
  final Order? order;

  CheckoutCart({
    this.id,
    this.webUrl,
    this.subtotalPrice,
    this.totalTax,
    this.totalPrice,
    this.paymentDue,
    this.coupon,
    this.shippingAddress,
    this.currencyCode,
    this.shippingLine,
    this.lineItems,
    this.order,
  });

  factory CheckoutCart.fromJsonShopify(Map<String, dynamic> parsedJson) {
    try {
      return CheckoutCart(
        id: parsedJson['id'],
        webUrl: parsedJson['webUrl'],
        subtotalPrice:
            double.parse(parsedJson['subtotalPrice']?['amount'] ?? '0'),
        totalTax: double.parse(parsedJson['totalTax']?['amount'] ?? '0'),
        totalPrice: double.parse(parsedJson['totalPrice']?['amount'] ?? '0'),
        paymentDue: double.parse(parsedJson['paymentDue']?['amount'] ?? '0'),
        shippingLine: parsedJson['shippingLine'] != null
            ? ShippingLine.fromJson(parsedJson['shippingLine'])
            : null,
        currencyCode: parsedJson['currencyCode'],
        lineItems: parsedJson['lineItems']?['nodes'] != null
            ? List.from(parsedJson['lineItems']['nodes'])
                .map((x) => ProductItem.fromShopifyJson(x))
                .toList()
            : null,
        shippingAddress: parsedJson['shippingAddress'] != null
            ? Address.fromShopifyJson(parsedJson['shippingAddress'])
            : null,
        coupon: Coupon.fromShopify(parsedJson['discountApplications'] ?? {}),
        order: parsedJson['order'] != null
            ? Order.fromShopify(parsedJson['order'])
            : null,
      );
    } catch (e) {
      printLog('::::: CheckoutCart.fromJsonShopify ERROR $e');
      return CheckoutCart();
    }
  }

  Map toJson() => {
        'id': id,
        'webUrl': webUrl,
        'subtotalPrice': subtotalPrice,
        'totalTax': totalTax,
        'totalPrice': totalPrice,
        'paymentDue': paymentDue,
        'coupon': coupon,
        'shippingAddress': shippingAddress,
        'currencyCode': currencyCode,
        'shippingLine': shippingLine,
        'needsShipping': true,
        'lineItems': lineItems?.map((e) => e.toJson()).toList(),
      };

  @override
  String toString() => 'Checkout { id: $id }';
}

class ShippingLine {
  final String handle;
  final String title;
  final double price;

  ShippingLine({
    required this.handle,
    required this.title,
    required this.price,
  });

  factory ShippingLine.fromJson(Map json) {
    return ShippingLine(
      handle: json['handle'],
      title: json['title'],
      price: double.parse(json['price']['amount']),
    );
  }

  Map toJson() {
    return {
      'handle': handle,
      'title': title,
      'price': price,
    };
  }

  @override
  String toString() =>
      'ShippingLine { handle: $handle, title: $title, price: $price }';
}
