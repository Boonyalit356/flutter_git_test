class Person {
  Person({required this.name, required this.age, required this.job});

  String name;
  int age;
  String job;

  
}

List<Person> data = [
  Person(name: "Kong", age: 18, job: "student"),
  Person(name: "Ton", age: 25, job: "Hr"),
  Person(name: "Jin", age: 27, job: "Doctor"),
  Person(name: "Mind", age: 30, job: "Police")
];