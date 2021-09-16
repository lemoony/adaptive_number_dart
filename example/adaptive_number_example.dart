import 'package:adaptive_number/adaptive_number.dart';

void main() {
  final number1 = Number(93432);
  final number2 = Number(42435);

  assert((number1 + number2) == Number(135867));
  assert((number1 * Number.two) == Number(186864));
  assert((number1 >> 3) == Number(11679));
}
