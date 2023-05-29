import 'package:validation/validation.dart';

void main(List<String> arguments) {
  var passwords = ['#forTe1', 'senhafraca', 'Qu@s1', 'Voce@Consegue!2023'];
  for (var password in passwords) {
    if (validate(password)) {
      print(password);
    }
  }
}
