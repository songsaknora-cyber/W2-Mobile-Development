class BankAccount {
  // TODO
  String owner;
  int id;
  double _balance = 0;

  BankAccount(this.owner, this.id);

  double get balance => _balance;


  void withdraw(double amount) {
    if (_balance - amount < 0) {
      print("You do not have enough to withdraw that amount.");
    } else {
      _balance -= amount;
      print("You've withdraw $amount. Your remaining balance : \$$balance\n");
    }
  }

  void credit(double amount) {
    if (amount < 0) {
      print("You can't add negative amount.");
    } else {
      print("\$$amount has been added to your account.");
    }
  }
}

class Bank {
  // TODO
  String name;
  List<BankAccount> _accounts = [];

  Bank({required this.name});

  List<BankAccount> get accounts => _accounts;

  BankAccount createAccount(int accountID, String accountOwner) {
    for (var account in accounts) {
      if (account.id == accountID) {
        print("Account with ID $accountID already exists!");
      }
    }

    final newAccount = BankAccount(accountOwner, accountID);
    accounts.add(newAccount);
    return newAccount;
  }
}

void main() {
  Bank myBank = Bank(name: "CADT Bank");
  BankAccount ronanAccount = myBank.createAccount(100, 'Ronan');

  print(ronanAccount.balance); // Balance: $0
  ronanAccount.credit(100);
  print(ronanAccount.balance); // Balance: $100
  ronanAccount.withdraw(50);
  print(ronanAccount.balance); // Balance: $50

  try {
    ronanAccount.withdraw(75); // This will throw an exception
  } catch (e) {
    print(e); // Output: Insufficient balance for withdrawal!
  }

  try {
    myBank.createAccount(100, 'Honlgy'); // This will throw an exception
  } catch (e) {
    print(e); // Output: Account with ID 100 already exists!
  }
}
