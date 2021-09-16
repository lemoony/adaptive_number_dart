import 'package:adaptive_number/src/number.dart';
import 'package:fixnum/fixnum.dart';

class NumberInt64 implements Number {
  final Int64 _value;

  NumberInt64(this._value);

  @override
  NumberInt64 operator +(Number value) {
    return NumberInt64(_value + (value.val as Int64));
  }

  @override
  NumberInt64 operator -(Number value) {
    return NumberInt64(_value - (value.val as Int64));
  }

  @override
  NumberInt64 operator -() {
    return NumberInt64(-(val));
  }

  @override
  NumberInt64 operator *(Number value) {
    return NumberInt64(_value * (value.val as Int64));
  }

  @override
  NumberInt64 operator &(Number value) {
    return NumberInt64(_value & (value.val as Int64));
  }

  @override
  NumberInt64 operator >>(int value) {
    return NumberInt64(_value >> value);
  }

  @override
  NumberInt64 operator <<(int value) {
    return NumberInt64(_value << value);
  }

  @override
  NumberInt64 operator ^(Number value) {
    return NumberInt64(_value ^ (value.val as Int64));
  }

  @override
  NumberInt64 operator |(Number value) {
    return NumberInt64(_value | (value.val as Int64));
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
  NumberInt64 operator %(Number value) {
    return NumberInt64(_value % (value.val as Int64));
  }

  @override
  Number operator ~/(Number value) {
    return NumberInt64(_value ~/ (value.val as Int64));
  }

  @override
  Int64 get val => _value;

  @override
  int get intValue => _value.toInt();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NumberInt64 &&
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
  NumberInt64 abs() {
    return NumberInt64(_value.abs());
  }

  @override
  int compareTo(Number value) {
    return _value.compareTo(value.val as Int64);
  }
}

Number createNumber(int val) => NumberInt64(Int64(val));
