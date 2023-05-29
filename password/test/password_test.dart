import 'package:test/test.dart';
import 'package:validation/validation.dart';

void main() {
  test('validate if password is strong', () {
    expect(validate('#forTe1'), true);
    expect(validate('senhafraca'), false);
    expect(validate('Qu@s1'), false);
    expect(validate('Voce@Consegue!2023'), true);
  });

  test('validate if the characters is a digit', () {
    expect(isDigit("1"), true);
    expect(isDigit("2"), true);
    expect(isDigit("3"), true);
    expect(isDigit("4"), true);
    expect(isDigit("5"), true);
    expect(isDigit("6"), true);
    expect(isDigit("7"), true);
    expect(isDigit("8"), true);
    expect(isDigit("9"), true);
    expect(isDigit("0"), true);
  });
}
