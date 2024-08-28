import 'package:atividade_27_08_24/models/account.dart';
import 'package:atividade_27_08_24/models/checking_account.dart';
import 'package:atividade_27_08_24/models/savings_account.dart';
import 'package:atividade_27_08_24/services/openFinance/open_finance_response.dart';

class OpenFinanceService {
  Future<OpenFinanceResponse> shareAccountScore<T extends Account>(T account) async {
    if (T is CheckingAccount) {
      return await sendAllOpenFinance(account);
    } else if (T is SavingsAccount) {
      return await sendPartnersOpenFinance(account);
    }
    throw ArgumentError.value(account, "The only account types valid are saving and checking");
  }

  Future<OpenFinanceResponse> sendAllOpenFinance(Account account) async {
    await Future.delayed(new Duration(seconds: 2));
    return OpenFinanceResponse(true, "checking-account");
  }

  Future<OpenFinanceResponse> sendPartnersOpenFinance(Account account) async {
    await Future.delayed(new Duration(seconds: 2));
    return OpenFinanceResponse(true, "saving-account");
  }
}
