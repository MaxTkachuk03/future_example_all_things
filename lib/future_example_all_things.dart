Future<String> fetchUserName() { // Повертає ім'я поточного користувача
  return Future.value('Jhon');
}

Future<String> logoutUser() {
  return Future.value("Sarah");
}
/* Виконує вихід із поточного користувача
та повертає ім’я користувача, що вийшов з системи */

void addHello(String name){
  print("Hello, $name");
}

greetName(){
  addHello(fetchUserName().toString());
  
}

Future<void> sayGoobbye() async {
  try {
    String logout = await logoutUser();
    print('$logout! Thanks, see you next time');
  } catch (e) {
    print("$e");
  }
}