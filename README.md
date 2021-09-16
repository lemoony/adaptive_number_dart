# adaptive_number

[![pub package](https://img.shields.io/pub/v/adaptive_number.svg)](https://pub.dev/packages/adaptive_number)
[![Language](https://img.shields.io/badge/language-Dart-blue.svg)](https://dart.dev)
![Build](https://github.com/lemoony/adaptive_number_dart/actions/workflows/test-package.yml/badge.svg)
[![codecov](https://codecov.io/gh/lemoony/adaptive_number_dart/branch/main/graph/badge.svg)](https://codecov.io/gh/lemoony/adaptive_number_dart)

A library providing a `Number` implementation that is dependent on the platform it is compiled for.
For JS runtimes, the implementation uses a 64-bit signed fixed-width integer, for all other platforms
the default Dart int data type.

## Use cases of this library

The `Number` substitute is useful in situations where a value may overflow on JS runtimes since the available value range
is not the same compared to mobile or desktop platforms:

https://api.dart.dev/stable/2.8.4/dart-core/int-class.html

The overflow on JS environments can be circumvented by using a BigInt or the fixed-with implementation of this library:
https://pub.dev/packages/fixnum

The disadvantage of just replacing all usages of `int` with `BigInt` or `fixnum/Int64` is that the performance on
mobile platforms may suffer significantly.

The `adpative_number` library takes a conditional import approach to ease this problem:

- If it runs on a JS runtime, `Number` wraps a `fixnum/Int64`
- For all other platforms `Number` wraps a default Dart `int` type.

## Usage

A `Number` instance is created by wrapping it around a default `int` value:

```dart
import 'package:adaptive_number/adaptive_number.dart';

void main() {
  final number1 = Number(93432);
  final number2 = Number(42435);
  assert((number1 + number2) == Number(51777));
}
```

All other operations on `Number` behave the same way as with `int`.

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/lemoony/adaptive_number_dart/issues
