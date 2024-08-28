import 'package:atividade_27_08_24/models/invalid_account.dart';
import 'package:test/test.dart';
import 'package:atividade_27_08_24/models/checking_account.dart';
import 'package:atividade_27_08_24/models/savings_account.dart';
import 'package:atividade_27_08_24/services/openFinance/open_finance_response.dart';
import 'package:atividade_27_08_24/services/openFinance/open_finance_service.dart';

void main() {
  group('OpenFinanceService Tests', () {
    late OpenFinanceService service;

    setUp(() {
      service = OpenFinanceService();
    });

    test('shareAccountScore should return typeAccount equals checking-account', () async {
      var account = CheckingAccount("kmrs-2312");
      var response = await service.shareAccountScore(account);

      expect(response.Success, equals(true));
      expect(response.TypeAccount, equals("checking-account"));
    });

    test('shareAccountScore should return typeAccount equals saving-account', () async {
      var account = SavingsAccount("kmrs-2983");
      var response = await service.shareAccountScore(account);

      expect(response, isA<OpenFinanceResponse>());
      expect(response.Success, equals(true));
      expect(response.TypeAccount, equals("saving-account"));
    });

    test('shareAccountScore should throw an error for invalid account type', () async {
      var account = InvalidAccount();

      expect(
        () async => await service.shareAccountScore(account),
        throwsA(isA<ArgumentError>()),
      );
    });
  });
}
