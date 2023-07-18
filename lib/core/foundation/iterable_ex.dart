import 'package:collection/collection.dart';

enum InsertLocation {
  around,
  between,
}

extension IterableEx<E> on Iterable<E> {
  List<E> insertingEach(
    E Function() toElement, {
    InsertLocation location = InsertLocation.between,
  }) {
    return insertingListEach(() => [toElement()], location: location);
  }

  List<E> insertingListEach(
    List<E> Function() toElements, {
    InsertLocation location = InsertLocation.between,
  }) {
    switch (location) {
      case InsertLocation.around:
        final lastIndex = length - 1;
        return foldIndexed([], (index, acc, item) {
          final base = [...acc, item];
          if (index == 0) {
            return [...toElements(), ...base];
          } else if (index == lastIndex) {
            return [...base, ...toElements()];
          } else {
            return base;
          }
        });

      case InsertLocation.between:
        final lastIndex = length - 1;
        return foldIndexed([], (index, acc, item) {
          final base = [...acc, item];
          if (index == lastIndex) {
            return base;
          } else {
            return [...base, ...toElements()];
          }
        });
    }
  }
}
