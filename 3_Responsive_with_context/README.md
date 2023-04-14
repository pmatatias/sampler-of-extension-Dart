## Responsive Flutter App with BuildContext

This `extension` is creating a responsive UI on flutter app using `BuildContext`. You can read full article on my medium here:
[Responsive Flutter App with BuildContext — Dart extension#3](https://pmatatias.medium.com/responsive-layout-with-buildcontext-dart-extension-3-145e438fb652)

```
extension Responsive on BuildContext {
  T responsive<T>(
    T defaultVal, {
    T? sm,
    T? md,
    T? lg,
    T? xl,
  }) {
    final wd = MediaQuery.of(this).size.width;
    return wd >= 1280
        ? (xl ?? lg ?? md ?? sm ?? defaultVal)
        : wd >= 1024
            ? (lg ?? md ?? sm ?? defaultVal)
            : wd >= 768
                ? (md ?? sm ?? defaultVal)
                : wd >= 640
                    ? (sm ?? defaultVal)
                    : defaultVal;
  }
}
```


Example result:
-  Responsive layout:

![Preview](https://cdn-images-1.medium.com/max/800/0*U2mLWIiFjNy0gYMm.gif)

- Responsive Grid view:

![Demo](https://cdn-images-1.medium.com/max/800/0*xK1bHgEXol3g6zti.gif)
  