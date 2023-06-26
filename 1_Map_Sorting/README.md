## Map Sorting
Map in dart doesnt provide method for sorting the items. You can use `intl` package to get this mehtod. But also you can use this method to sort the item in your variable map.
Read the article here: [Map Sorting — Dart extension#1](https://medium.com/@pmatatias/map-sorting-dart-extension-1-e98747ad9635)

```dart
extension MapExt<T, U> on Map<T, U> {
  Map<T, U> sortedBy(Comparable Function(U u) value, {bool isAsc = true}) {
    final entries = this.entries.toList();
    isAsc
        ? entries.sort((a, b) => value(a.value).compareTo(value(b.value)))
        : entries.sort((b, a) => value(a.value).compareTo(value(b.value)));
    return Map<T, U>.fromEntries(entries);
  }
}

```


-  preview in VSCode

![1](https://miro.medium.com/v2/resize:fit:720/format:webp/1*3-AvV9ulpseN651TpUfCNw.png)
 
