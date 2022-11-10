/// you can see the demo on dartpad
/// https://dartpad.dev/?id=aee87b3caab7689c6f4783e29dd637d7
///
/// article on medium :
/// https://medium.com/@pmatatias/map-sorting-dart-extension-1-e98747ad9635
///

void main() {
  Map<String, dynamic> data = {
    "book": 3,
    "pencil": 10,
    "keyboard": 1,
    "scissors": 2
  };
  final sortedAsc = data.sortedBy((u) => u);
  final sortedDsc = data.sortedBy((u) => u, isAsc: false);
//   print('ASC: $sortedAsc');
//   print('DSC: $sortedDsc');

  Map<String, Item> data2 = {
    "2022-11-01": Item(count: 12, name: "book"),
    "2022-11-12": Item(count: 2, name: "pencil"),
    "2022-11-05": Item(count: 18, name: "keyboard"),
    "2022-11-24": Item(count: 8, name: "scissors"),
  };
  final sortByCount = data2.sortedBy((u) => u.count).toString();
  final sortByName = data2.sortedBy((u) => u.name).toString();
  final sortByKeyDate = data2.sortedBy((u) => u.name).toString();
  print('Sort by Count::>  $sortByCount');
  print('');
  print('Sort by Name ::>  $sortByName');
}

extension MapExt<T, U> on Map<T, U> {
  Map<T, U> sortedBy(Comparable Function(U u) value, {bool isAsc = true}) {
    final entries = this.entries.toList();
    isAsc
        ? entries.sort((a, b) => value(a.value).compareTo(value(b.value)))
        : entries.sort((b, a) => value(a.value).compareTo(value(b.value)));
    return Map<T, U>.fromEntries(entries);
  }
}

class Item {
  String name;
  int count;

  Item({required this.count, required this.name});
  @override
  String toString() {
    return '$name($count)';
  }
}
