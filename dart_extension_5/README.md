## Update single item in flutter list

user extension method on `List` to make new method for update single item in the list.

article :


```
List<T> update(int pos, T t) {
  List<T> list = [];
  list.add(t);
  replaceRange(pos, pos + 1, list);
  return this;
}
```


demo result: https://dartpad.dev/?id=15dcd7bdad4f42f174952ab10f960742

result: 


