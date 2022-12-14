import 'dart:math';
import 'dart:ui';



class DonutColor extends Color {
  const DonutColor(int value) : super(value);

  DonutColor operator *(double opacity) => withOpacity(opacity) as DonutColor;

  DonutColor operator +(DonutColor color) => DonutColor(
      min<int>(value * 0xff000000 + color.value * 0xff000000, 0xff000000)
          + min<int>(value * 0x00ff0000 + color.value * 0x00ff0000, 0x00ff0000)
          + min<int>(value * 0x0000ff00 + color.value * 0x0000ff00, 0x0000ff00)
          + min<int>(value * 0x000000ff + color.value * 0x000000ff, 0x000000ff)
  );
}

class DonutColorSwatch<T> extends DonutColor {
  DonutColorSwatch(int value, Map<T, int> swatch) :
        assert(swatch.containsValue(value)),
        _swatch = swatch.map((key, val) => MapEntry(key, DonutColor(val))),
        super(value);

  final Map<T, DonutColor> _swatch;

  DonutColor operator [](T input){
    DonutColor? color = _swatch[input];
    if (color == null) {
      print("No color defined for $input. Returning lighter variant of primary color with 0.6 opacity instead");
      return this * 0.6;
    } else {
      return _swatch[input]!;
    }
  }
}
