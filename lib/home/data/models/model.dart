class Model {
  final String name;
  final int age;
  final int salary;
  final String email;
  const Model({
    required this.name,
    required this.age,
    required this.salary,
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return {'name': name, 'age': age, 'salary': salary, 'email': email};
  }
  factory Model.fromMap(Map<String, dynamic> map) {
    return Model(
      name: map['name'],
      age: map['age'],
      salary: map['salary'],
      email: map['email'],
    );
  }
}
