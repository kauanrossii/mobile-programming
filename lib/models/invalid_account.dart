import 'package:atividade_27_08_24/models/account.dart';

class InvalidAccount extends Account {
  InvalidAccount() : super("invalid");

  @override
  double getBalance() {
    return 0.0;
  }

  @override
  String getAgencyName() {
    return "invalid-agency";
  }

  @override
  String getNumber() {
    return "invalid-number";
  }
}