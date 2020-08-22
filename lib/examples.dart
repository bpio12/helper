/* Future getData() async {
  var url = 'https://thehelperapp.000webhostapp.com/get.php';
  http.Response response = await http.get(url);
  var data = jsonDecode(response.body);
  print(data.toString());
  return data;
}

class User {
  String name;
  String email;

  User(this.name, this.email);

  factory User.fromJson(dynamic json) {
    return User(json['name'] as String, json['email'] as String);
  }

  @override
  String toString() {
    return '{ ${this.name}, ${this.email} }';
  }
} */
