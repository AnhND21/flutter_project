class User {
  int? age;
  String fullName;
  String email;
  String avatar;
  final String userName;
  String password;

  User(this.fullName, this.age, this.email, this.avatar, this.userName,
      this.password);

  getUserFullName() {
    return fullName;
  }

  setUserFullName(String name) {
    fullName = name;
  }
}
