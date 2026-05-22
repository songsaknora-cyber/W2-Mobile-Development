enum Skill { FLUTTER, DART, OTHER }

class Employee {
  final String _name;
  final double _baseSalary;
  final List<Skill> _skills;
  final Address _address;
  final int _yearsOfExperience;

  // constructor
  Employee(
    this._name,
    this._baseSalary,
    this._skills,
    this._address,
    this._yearsOfExperience,
  );

  // Getter
  String get name => _name;
  double get baseSalary => _baseSalary;
  List<Skill> get skills => _skills;
  Address get address => _address;
  int get yearsOfExperience => _yearsOfExperience;

  //named constructor
  Employee.mobileDeveloper(
    this._name,
    this._baseSalary,
    this._address,
    this._yearsOfExperience,
  ) : _skills = [Skill.DART, Skill.FLUTTER];

  //Methods

  double computeSalary() {
    double newSalary = 0;
    newSalary += baseSalary;
    newSalary += (yearsOfExperience * 2000);

    for (var i in skills) {
      if (i == Skill.FLUTTER) {
        newSalary += 1000;
      } else if (i == Skill.DART) {
        newSalary += 1000;
      } else if (i == Skill.OTHER) {
        newSalary += 500;
      }
    }
    return newSalary;
  }

  void printDetails() {
    print("Employee Name : $name");
    print("Base Salary : ${baseSalary}\$");
    print("Skill : ${skills}");
    print(
      "Address :\nStreet : ${address.street}\nCity : ${address.city}\nZipCode : ${address.zipCode}",
    );
    print("Year of experience : $yearsOfExperience year(s)");
    print("Total salary : ${computeSalary()}\$\n");
  }
}

class Address {
  String _street;
  String _city;
  String _zipCode;

  Address(this._city, this._street, this._zipCode);

  String get street => _street;
  String get city => _city;
  String get zipCode => _zipCode;
}

void main() {
  var emp1 = Employee(
    'Sokea',
    40000,
    [Skill.OTHER],
    Address("Phnom Penh", "Street 71", "12201"),
    2,
  );
  emp1.printDetails();

  var emp2 = Employee.mobileDeveloper('Ronan', 45000,Address("Phnom Penh","Street 168","12001"), 5);
  emp2.printDetails();
}
