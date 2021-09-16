import 'package:adaptive_number/adaptive_number.dart';
import 'package:test/test.dart';

// Since both implementations of Number only forward most method call,
// tests are kept minimal and should mainly concentrate on verifying that no
// wrong operator and/or method is being called because of a mix up
void main() {
  group('utility functions', () {
    test('retrieve value as int', () {
      expect(Number.zero.intValue, 0);
      expect(Number.one.intValue, 1);
      expect(Number.two.intValue, 2);
      expect(Number(42).intValue, 42);
    });
  });

  group('other overwrites', () {
    test('hash code', () {
      expect(Number.zero.hashCode, 0.hashCode);
      expect(Number.one.hashCode, 1.hashCode);
      expect(Number.two.hashCode, 2.hashCode);
      expect(Number(42).hashCode, 42);
    });

    test('to string', () {
      expect(Number.one.toString(), '1');
      expect((-Number.one).toString(), '-1');
    });

    test('toRadixString', () {
      expect(Number(42).toRadixString(2), '101010');
    });

    test('abs', () {
      expect(Number(-42).abs(), Number(42));
    });

    test('compare to', () {
      expect(Number.one.compareTo(Number.two), -1);
      expect(Number.two.compareTo(Number.one), 1);
      expect(Number.one.compareTo(Number.one), 0);
    });
  });

  group('operator tests', () {
    test('add', () {
      expect(Number.one + Number.two, Number(3));
    });

    test('subtract', () {
      expect(Number.two - Number.one, Number.one);
    });

    test('invert', () {
      expect((-Number.one).intValue, -1);
      expect((-Number.zero).intValue, 0);
    });

    test('multiply', () {
      expect(Number.two * Number(3), Number(6));
    });

    test('& bitwise and', () {
      expect(Number(1234) & Number(9876), Number(1168));
      expect(Number(-1234) & Number(9876), Number(8708));
    });

    test('>> bitwise shift right', () {
      expect(Number(23423) >> 8, Number(91));
      expect(Number(-87653) >> 12, Number(-22));
    });

    test('<< bitwise shift left', () {
      expect(Number(23423) << 8, Number(5996288));
      expect(Number(-87653) << 12, Number(-359026688));
    });

    test('^ bitwise xor', () {
      expect(Number(1234) ^ Number(9876), Number(8774));
    });

    test('| bitwise or', () {
      expect(Number(1234) | Number(9876), Number(9942));
      expect(Number(-1234) | Number(9876), Number(-66));
    });

    test('< less than', () {
      expect(Number.one < Number.two, isTrue);
      expect(Number.two < Number.one, isFalse);
    });

    test('< less than or equal', () {
      expect(Number.two <= Number.one, isFalse);
      expect(Number.one <= Number.two, isTrue);
      expect(Number.two <= Number.two, isTrue);
    });

    test('< greater than', () {
      expect(Number.two > Number.one, isTrue);
      expect(Number.one > Number.two, isFalse);
    });

    test('< greater than or equal', () {
      expect(Number.two >= Number.one, isTrue);
      expect(Number.one >= Number.two, isFalse);
      expect(Number.two >= Number.two, isTrue);
    });

    test('modulo', () {
      expect(Number.two % Number.one, Number.zero);
      expect(Number(3) % Number.one, Number.zero);
      expect(Number.one % Number.two, Number.one);
    });

    test('truncating division', () {
      expect(Number(1000) ~/ Number(-3), Number(-333));
    });

    test('equals', () {
      expect(Number(0) == Number.zero, isTrue);
      expect(Number(1) == Number.one, isTrue);
      expect(Number(2) == Number.two, isTrue);

      expect(Number(1) == Number.zero, isFalse);
      expect(Number.one == Number.zero, isFalse);
    });
  });
}
