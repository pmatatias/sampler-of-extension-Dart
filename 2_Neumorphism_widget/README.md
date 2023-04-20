## Neumorphism Flutter Widget
Update your widget style with modern UI design. Neumorphism is new style using shadow of the widget. full article here: [Neumorphism Fultter Widget— Dart extension#2](https://medium.com/easyread/neumorphismwidget-dart-extension-2-3259e650e177)

- Example result:

![result](https://miro.medium.com/v2/resize:fit:720/format:webp/1*jFg_NshrRA-uuZJ6e4xtyg.png)


```
extension Neumorphism on Widget {
  addNeumorphism({
    double borderRadius = 10.0,
    Offset offset = const Offset(5, 5),
    double blurRadius = 10,
    Color topShadowColor = Colors.white60,
    Color bottomShadowColor = const Color(0x26234395),
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
        boxShadow: [
          BoxShadow(
            offset: offset,
            blurRadius: blurRadius,
            color: bottomShadowColor,
          ),
          BoxShadow(
            offset: Offset(-offset.dx, -offset.dx),
            blurRadius: blurRadius,
            color: topShadowColor,
          ),
        ],
      ),
      child: this,
    );
  }
}

```