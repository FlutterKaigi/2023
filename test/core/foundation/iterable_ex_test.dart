import 'package:confwebsite2023/core/foundation/iterable_ex.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('#insertingEach', () {
    group('between', () {
      test('insert between two elements', () {
        final base = [1, 3];
        final expected = [1, 2, 3];

        expect(base.insertingEach(() => 2), orderedEquals(expected));
      });

      test('insert between three elements', () {
        final base = [1, 2, 3];
        final expected = [1, 4, 2, 4, 3];

        expect(base.insertingEach(() => 4), orderedEquals(expected));
      });
    });

    group('around', () {
      test('insert around two elements', () {
        final base = [1, 3];
        final expected = [2, 1, 3, 2];

        expect(
          base.insertingEach(() => 2, location: InsertLocation.around),
          orderedEquals(expected),
        );
      });

      test('insert around three elements', () {
        final base = [1, 2, 3];
        final expected = [4, 1, 2, 3, 4];

        expect(
          base.insertingEach(() => 4, location: InsertLocation.around),
          orderedEquals(expected),
        );
      });
    });
  });

  group('#insertingListEach', () {
    group('between', () {
      test('insert between two elements', () {
        final base = [1, 4];
        final expected = [1, 2, 3, 4];

        expect(base.insertingListEach(() => [2, 3]), orderedEquals(expected));
      });

      test('insert between three elements', () {
        final base = [1, 2, 3];
        final expected = [1, 4, 4, 2, 4, 4, 3];

        expect(base.insertingListEach(() => [4, 4]), orderedEquals(expected));
      });
    });

    group('around', () {
      test('insert around two elements', () {
        final base = [2, 3];
        final expected = [1, 1, 2, 3, 1, 1];

        expect(
          base.insertingListEach(() => [1, 1], location: InsertLocation.around),
          orderedEquals(expected),
        );
      });

      test('insert around three elements', () {
        final base = [2, 3, 4];
        final expected = [1, 1, 2, 3, 4, 1, 1];

        expect(
          base.insertingListEach(() => [1, 1], location: InsertLocation.around),
          orderedEquals(expected),
        );
      });
    });
  });
}
