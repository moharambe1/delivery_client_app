// ignore_for_file: constant_identifier_names

enum StatePackageEnum {
  RECEIVING,
  RECEIVED,
  DELIVERING,
  DELEVERED,
  RETURN,
}

enum StatsMoneyEnum { MANAGER, DELIVER, RECIVER, CLIENT, PAYED }

enum StatsMoneyDeliveringEnum { CLIENT, RECIVER, PAYED }

enum WilayaEnum { BISKRA }

enum CityEnum { BISKRA }

class PackageModel {
  int id;

  String fullName;
  String phoneNumber;

  int moneyPackage;
  int moneyDelivring;

  StatePackageEnum statePackage;
  StatsMoneyEnum stateMoney;
  StatsMoneyDeliveringEnum stateMoneyDelivring;

  WilayaEnum wilaya = WilayaEnum.BISKRA;
  CityEnum city = CityEnum.BISKRA;
  String address;

  PackageModel(
      {required this.id,
      required this.fullName,
      required this.phoneNumber,
      required this.statePackage,
      required this.stateMoney,
      required this.stateMoneyDelivring,
      required this.address,
      required this.moneyDelivring,
      this.moneyPackage = 0});

  String _cityText() {
    const cityText = ["بــسكرة"];

    return cityText[city.index];
  }

  String getCityText() {
    return _cityText();
  }
}
