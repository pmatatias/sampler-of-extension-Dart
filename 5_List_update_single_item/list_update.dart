extension ListUpdate<T> on List<T> {
  /// Put the description here
  /// if you want to give and example
  /// user this \`
  /// for example:
  /// ```
  /// final list = [];
  /// print(list);
  /// ```
  /// Lorem ipsum dolor sit
  /// amet 
  /// dart extension #5 
  /// random text here
  List<T> update(int pos, T t) {
    List<T> list = [];
    list.add(t);
    replaceRange(pos, pos + 1, list);
    return this;
  }
}
