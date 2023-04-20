## Update single item in flutter list

user extension method on `List` to make new method for update single item in the list.

### Article : 
[Update Single Item in Flutter List — Dart Extension#5](https://medium.com/@pmatatias/update-single-item-in-flutter-list-dart-extension-5-6d7ac382c32c)

### Preview demo:

<p align="center">
 <img src="https://miro.medium.com/v2/resize:fit:554/1*jQhM5XtqnvA4do0ALgau5w.gif" alt="img prev" height="600px" width="277px" title="img prev">
</p>

### Method
```
List<T> update(int pos, T t) {
  List<T> list = [];
  list.add(t);
  replaceRange(pos, pos + 1, list);
  return this;
}
```


### Demo on Dartpad
https://dartpad.dev/?id=15dcd7bdad4f42f174952ab10f960742

### VScode auto complete:

<p  align: "center">
 <img src="https://miro.medium.com/v2/resize:fit:640/format:webp/1*BaPOemH9VwyGjejWfg5Wkg.png" alt="img prev"  title="img prev">
 <img src="https://miro.medium.com/v2/resize:fit:640/format:webp/1*BI780SCXczMDEsI-hUrmwA.png" alt="img prev" title="img prev">
</p>



