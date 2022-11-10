/// you can see the demo on dartpad
/// https://dartpad.dev/?id=aee87b3caab7689c6f4783e29dd637d7
///
/// article on medium :
/// https://medium.com/@pmatatias/map-sorting-dart-extension-1-e98747ad9635
///

extension MapExt<T, U> on Map<T, U> {
  Map<T, U> sortedBy(Comparable Function(U u) value, {bool isAsc = true}) {
    final entries = this.entries.toList();
    isAsc
        ? entries.sort((a, b) => value(a.value).compareTo(value(b.value)))
        : entries.sort((b, a) => value(a.value).compareTo(value(b.value)));
    return Map<T, U>.fromEntries(entries);
  }
}
