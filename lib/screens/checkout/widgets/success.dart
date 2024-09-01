import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/config.dart';
import '../../../common/constants.dart';
import '../../../generated/l10n.dart';
import '../../../models/index.dart' show Order, UserModel, PointModel;
import '../../../models/order/bank_account_item.dart';
import '../../../services/index.dart';
import '../../base_screen.dart';

class OrderedSuccess extends StatefulWidget {
  final Order? order;

  const OrderedSuccess({this.order});

  @override
  BaseScreen<OrderedSuccess> createState() => _OrderedSuccessState();
}

class _OrderedSuccessState extends BaseScreen<OrderedSuccess> {
  @override
  void afterFirstLayout(BuildContext context) {
    final user = Provider.of<UserModel>(context, listen: false).user;
    if (user != null &&
        user.cookie != null &&
        kAdvanceConfig.enablePointReward) {
      Services().api.updatePoints(user.cookie, widget.order);
      Provider.of<PointModel>(context, listen: false).getMyPoint(user.cookie);
    }
  }

  @override
  Widget build(BuildContext context) {
    final userModel = Provider.of<UserModel>(context);

    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(top: 20),
          decoration: BoxDecoration(color: Theme.of(context).primaryColorLight),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  S.of(context).itsOrdered,
                  style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.secondary),
                ),
                const SizedBox(height: 5),
                if (widget.order?.number != null)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        S.of(context).orderNo,
                        style: TextStyle(
                            fontSize: 14,
                            color: Theme.of(context).colorScheme.secondary),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: Text(
                          '#${widget.order!.number}',
                          style: TextStyle(
                              fontSize: 14,
                              color: Theme.of(context).colorScheme.secondary),
                        ),
                      )
                    ],
                  )
              ],
            ),
          ),
        ),
        if (widget.order?.bacsInfo.isNotEmpty ?? false)
          const SizedBox(height: 30),
        if (widget.order?.bacsInfo.isNotEmpty ?? false)
          Text(
            S.of(context).ourBankDetails,
            style: TextStyle(
                fontSize: 18, color: Theme.of(context).colorScheme.secondary),
          ),
        ...?widget.order?.bacsInfo
            .map((e) => BankAccountInfo(bankInfo: e))
            .toList(),
        const SizedBox(height: 15),
        Text(
          S.of(context).orderSuccessTitle1,
          style: TextStyle(
              fontSize: 18, color: Theme.of(context).colorScheme.secondary),
        ),
        const SizedBox(height: 15),
        Text(
          S.of(context).orderSuccessMsg1,
          style: TextStyle(
              color: Theme.of(context).colorScheme.secondary,
              height: 1.4,
              fontSize: 14),
        ),
        if (userModel.user != null)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Row(children: [
              Expanded(
                child: ButtonTheme(
                  height: 45,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Theme.of(context).primaryColor,
                      elevation: 0,
                    ),
                    onPressed: () {
                      final user =
                          Provider.of<UserModel>(context, listen: false).user;
                      Navigator.of(context).pushNamed(
                        RouteList.orders,
                        arguments: user,
                      );
                    },
                    child: Text(
                      S.of(context).showAllMyOrdered.toUpperCase(),
                    ),
                  ),
                ),
              ),
            ]),
          ),
        const SizedBox(height: 40),
        Text(
          S.of(context).orderSuccessTitle2,
          style: TextStyle(
              fontSize: 18, color: Theme.of(context).colorScheme.secondary),
        ),
        const SizedBox(height: 10),
        Text(
          S.of(context).orderSuccessMsg2,
          style: TextStyle(
              color: Theme.of(context).colorScheme.secondary,
              height: 1.4,
              fontSize: 14),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Row(
            children: [
              Expanded(
                child: ButtonTheme(
                  height: 45,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: const RoundedRectangleBorder(),
                    ),
                    onPressed: () {
                      Navigator.of(context).popUntil((route) => route.isFirst);
                    },
                    child: Text(
                      S.of(context).backToShop.toUpperCase(),
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class BankAccountInfo extends StatelessWidget {
  const BankAccountInfo({Key? key, required this.bankInfo}) : super(key: key);
  final BankAccountItem bankInfo;

  @override
  Widget build(BuildContext context) {
    if ((bankInfo.accountName?.isEmpty ?? true) ||
        (bankInfo.accountNumber?.isEmpty ?? true)) {
      return const SizedBox();
    }
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(color: Theme.of(context).primaryColorLight),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(bankInfo.accountName ?? '',
              style: Theme.of(context).textTheme.headlineSmall),
          const SizedBox(height: 5),
          Text.rich(
            TextSpan(
                text: '${S.of(context).bank}: ',
                style: Theme.of(context).textTheme.labelLarge,
                children: <InlineSpan>[
                  TextSpan(
                    text: bankInfo.accountNumber,
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge
                        ?.copyWith(fontWeight: FontWeight.bold),
                  )
                ]),
          ),
          if (bankInfo.sortCode?.isNotEmpty ?? false) const SizedBox(height: 5),
          if (bankInfo.sortCode?.isNotEmpty ?? false)
            Text.rich(
              TextSpan(
                  text: '${S.of(context).sortCode}: ',
                  style: Theme.of(context).textTheme.labelLarge,
                  children: <InlineSpan>[
                    TextSpan(
                      text: bankInfo.sortCode,
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge
                          ?.copyWith(fontWeight: FontWeight.bold),
                    )
                  ]),
            ),
          if (bankInfo.iban?.isNotEmpty ?? false) const SizedBox(height: 5),
          if (bankInfo.iban?.isNotEmpty ?? false)
            Text.rich(
              TextSpan(
                  text: 'IBAN: ',
                  style: Theme.of(context).textTheme.labelLarge,
                  children: <InlineSpan>[
                    TextSpan(
                      text: bankInfo.iban,
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge
                          ?.copyWith(fontWeight: FontWeight.bold),
                    )
                  ]),
            ),
          if (bankInfo.bic?.isNotEmpty ?? false) const SizedBox(height: 5),
          if (bankInfo.bic?.isNotEmpty ?? false)
            Text.rich(
              TextSpan(
                  text: 'BIC / Swift: ',
                  style: Theme.of(context).textTheme.labelLarge,
                  children: <InlineSpan>[
                    TextSpan(
                      text: bankInfo.bic,
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge
                          ?.copyWith(fontWeight: FontWeight.bold),
                    )
                  ]),
            ),
        ],
      ),
    );
  }
}
