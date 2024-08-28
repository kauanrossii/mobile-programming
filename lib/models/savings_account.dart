import 'package:atividade_27_08_24/models/account.dart';

class SavingsAccount extends Account {
  SavingsAccount(super.agencyName);

  @override
  String getAgencyName() {
    return agencyName;
  }

  @override
  double getBalance() {
    return balance;
  }

  @override
  String getNumber() {
    return number;
  }
}
