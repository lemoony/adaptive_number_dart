import 'package:adaptive_number/src/stub.dart'
// ignore: uri_does_not_exist
    if (dart.library.io) 'package:adaptive_number/src/int.dart'
// ignore: uri_does_not_exist
    if (dart.library.html) 'package:adaptive_number/src/int64.dart';

abstract class Number {
  static Number zero = Number(0);
  static Number one = Number(1);
  static Number two = Number(2);

  factory Number(int val) => createNumber(val);

  dynamic get val;

  /// Returns the value as int (caution: May overflow on JS runtimes)
  int get intValue;

  @override
  int get hashCode;

  /// Addition operator.
  Number operator +(Number value);

  /// Subtraction operator.
  Number operator -(Number value);

  /// Negate operator.
  Number operator -();

  /// Multiplication operator.
  Number operator *(Number value);

  /// Bitwise and operator.
  Number operator &(Number value);

  /// Right bit-shift operator.
  Number operator >>(int value);

  /// Left bit-shift operator.
  Number operator <<(int value);

  /// Bitwise xor operator.
  Number operator ^(Number value);

  /// Bitwise or operator.
  Number operator |(Number value);

  /// Relational less than operator.
  bool operator <(Number value);

  /// Relational less than or equal to operator.
  bool operator <=(Number value);

  /// Relational greater than operator.
  bool operator >(Number value);

  /// Relational greater than or equal to operator.
  bool operator >=(Number value);

  /// Euclidean modulo operator.
  Number operator %(Number value);

  /// Truncating division operator.
  Number operator ~/(Number value);

  @override
  String toString();

  /// Returns a string representing the value of this integer in the given radix.
  String toRadixString(int radix);

  /// Returns the absolute value of this integer.
  Number abs();

  // Compares this to `other`
  int compareTo(Number other);
}
