class Person {
  final String name;
  final int age;

  const Person(this.name, this.age);
}

void main() {
  const Person person = Person("John", 20);
  print("Name : ${person.name}, Age : ${person.age}");
}
