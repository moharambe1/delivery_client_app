import 'package:delivery_client_app/models/package_model.dart';
import 'package:delivery_client_app/presentation/widget/w_button_nav_bar.dart';
import 'package:delivery_client_app/presentation/widget/w_package_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

const navigationBarItem = [
  ["assets/icons/icon_deliver_failed.png", "فشل توصيل"],
  ["assets/icons/icon_deliver_success.png", "تم توصيل"],
  ["assets/icons/icon_deliver_delivering.png", "في الطريق"],
  ["assets/icons/icon_deliver_packages.png", "المستودع"],
];
List<PackageModel> tPackages = [
  PackageModel(
      id: 1,
      fullName: "ahmed",
      phoneNumber: "0771000000",
      statePackage: StatePackageEnum.RECEIVED,
      stateMoney: StatsMoneyEnum.CLIENT,
      stateMoneyDelivring: StatsMoneyDeliveringEnum.CLIENT,
      address: "حي الحوزة",
      moneyDelivring: 1000),
  PackageModel(
      id: 2,
      fullName: "achraf",
      phoneNumber: "0771000000",
      statePackage: StatePackageEnum.DELEVERED,
      stateMoney: StatsMoneyEnum.CLIENT,
      stateMoneyDelivring: StatsMoneyDeliveringEnum.CLIENT,
      address: "حي البخاري",
      moneyDelivring: 10000)
];

class _HomePageState extends State<HomePage> {
  int indexSlecte = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: () => {},
            child: Container(
                padding: EdgeInsets.all(1.w),
                alignment: Alignment.center,
                child: Container(
                    padding: const EdgeInsets.all(1),
                    child: Image.asset("assets/icons/icon_deliver_add.png")))),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        bottomNavigationBar: const WButtomNavBar(),
        body: SafeArea(
            child: SingleChildScrollView(
                child: SizedBox(
          width: 99.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: List.generate(15, (index) {
              return Padding(
                  padding: EdgeInsets.only(bottom: 2.h),
                  child: packageCard(context, tPackages[index % 2]));
            }),
          ),
        ))));
  }
}
