
class User {
  String userName;
  String email;
  String password;
  int age;
  String city;
  String country;
  String gender;
  int lant;
  int lang;
  User({
    required this.userName,
    required this.email,
    required this.password,
    required this.age,
    required this.city,
    required this.country,
    required this.gender,
    required this.lant,
    required this.lang,
  });


  // factory Book.fromJson(Map<String, dynamic> json) {
  //   return Book(
  //     id: json['id'],
  //     title: json['title'],
  //     author: json['author'],
  //   );
  // }
}
