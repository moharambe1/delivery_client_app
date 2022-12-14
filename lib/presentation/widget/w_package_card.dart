import 'package:delivery_client_app/models/package_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

enum IconPath { package, delivering, success, faild }

String packageIcon(StatePackageEnum state) {
  switch (state) {
    case StatePackageEnum.DELEVERED:
      return "assets/icons/icon_deliver_success.png";
    case StatePackageEnum.RETURN:
      return "assets/icons/icon_deliver_failed.png";
    default:
      return "assets/icons/icon_deliver_delivering.png";
  }
}

Widget packageCard(BuildContext context, PackageModel data) {
  return Container(
    height: 70,
    width: 90.w,
    padding: EdgeInsets.all(2.w),
    decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        boxShadow: [
          BoxShadow(
              color: Theme.of(context).colorScheme.secondary,
              blurRadius: 4,
              offset: const Offset(-5, 4))
        ]),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(children: [
          Container(
              margin: EdgeInsets.only(left: 4.w, right: 0.5.w),
              width: 46,
              child: Image.asset(
                  fit: BoxFit.fill, packageIcon(data.statePackage))),
          Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text(data.phoneNumber), Text(data.address)])
        ]),
        Text((data.moneyPackage +
                ((data.stateMoneyDelivring == StatsMoneyDeliveringEnum.RECIVER)
                    ? data.moneyDelivring
                    : 0))
            .toString())
      ],
    ),
  );
}
