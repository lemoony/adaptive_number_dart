import 'package:adaptive_number/src/number.dart';

class NumberInt implements Number {
  final int _value;

  NumberInt(this._value);

  @override
  NumberInt operator +(Number value) {
    return NumberInt(_value + (value.val as int));
  }

  @override
  NumberInt operator -(Number value) {
    return NumberInt(_value - (value.val as int));
  }

  @override
  NumberInt operator -() {
    return NumberInt(-(val));
  }

  @override
  NumberInt operator *(Number value) {
    return NumberInt(_value * (value.val as int));
  }

  @override
  NumberInt operator &(Number value) {
    return NumberInt(_value & (value.val as int));
  }

  @override
  NumberInt operator >>(int value) {
    return NumberInt(_value >> value);
  }

  @override
  NumberInt operator <<(int value) {
    return NumberInt(_value << value);
  }

  @override
  NumberInt operator ^(Number value) {
    return NumberInt(_value ^ (value.val as int));
  }

  @override
  NumberInt operator |(Number value) {
    return NumberInt(_value | (value.val as int));
  }

  @override
  bool operator <(Number value) {
    return (intValue < value.intValue);
  }

  @override
  bool operator <=(Number value) {
    return (intValue <= value.intValue);
  }

  @override
  bool operator >(Number value) {
    return (intValue > value.intValue);
  }

  @override
  bool operator >=(Number value) {
    return (intValue >= value.intValue);
  }

  @override
  NumberInt operator %(Number value) {
    return NumberInt(_value % (value.val as int));
  }

  @override
  Number operator ~/(Number value) {
    return NumberInt(_value ~/ (value.val as int));
  }

  @override
  int get val => _value;

  @override
  int get intValue => _value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NumberInt &&
          runtimeType == other.runtimeType &&
          _value == other._value;

  @override
  int get hashCode => _value.hashCode;

  @override
  String toString() {
    return _value.toString();
  }

  @override
  String toRadixString(int radix) {
    return _value.toRadixString(radix);
  }

  @override
  NumberInt abs() {
    return NumberInt(_value.abs());
  }

  @override
  int compareTo(Number other) {
    return _value.compareTo(other.intValue);
  }
}

Number createNumber(int val) => NumberInt(val);
