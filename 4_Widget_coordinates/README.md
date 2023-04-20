## How to Get Widget Coordinates in Flutter UI

Use `GlobalKey` to get position of widget rendered on the screen. Read full article here: [How to Get Widget Coordinates in Flutter UI— Dart Extension#4](https://medium.com/easyread/how-to-get-widget-coordinates-in-flutter-ui-dart-extension-4-d59dc15a9e3f )

```
extension GlobalKeyExtension on GlobalKey {
  Rect? get globalPaintBounds {
    final renderObject = currentContext?.findRenderObject();
    final translation = renderObject?.getTransformTo(null).getTranslation();
    if (translation != null && renderObject?.paintBounds != null) {
      final offset = Offset(translation.x, translation.y,);
      return renderObject!.paintBounds.shift(offset);
    } else {
      return null;
    }
  }
}
```

- Sample result: 
![Preview](https://miro.medium.com/v2/resize:fit:720/0*Cy7-dKKi9nanYwdD.gif)


---- 

[Demo in dartpad](https://dartpad.dev/?id=d6e0e14e7714b1a7d1a3de2dbeeec2b4)