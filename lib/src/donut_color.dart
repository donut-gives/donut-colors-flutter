import 'dart:math';
import 'dart:ui';

import 'package:donutcolors/donutcolors.dart';



class DonutColor extends Color {
  const DonutColor(super.value);

  DonutColor operator *(double opacity) => DonutColor(
      ((opacity * 255.0).round() << 24 | 0x00ffffff & value)
  );

  DonutColor operator +(DonutColor color) => DonutColor(
      min<int>(value & 0xff000000 + color.value & 0xff000000, 0xff000000)
          + min<int>(value & 0x00ff0000 + color.value & 0x00ff0000, 0x00ff0000)
          + min<int>(value & 0x0000ff00 + color.value & 0x0000ff00, 0x0000ff00)
          + min<int>(value & 0x000000ff + color.value & 0x000000ff, 0x000000ff)
  );
}

class DonutColorSwatch<T extends Enum> extends DonutColor {
  factory DonutColorSwatch.fromValues(Map<T, int?> values){
    int _0 = 0;
    DonutColor? _1;
    DonutColor? _2;
    DonutColor? _3;
    values.forEach((key, value) {
      switch(key.index){
        case 0:
          _0 = value!;
          break;
        case 1:
          _1 = value!=null?DonutColor(value):null;
          break;
        case 2:
          _2 = value!=null?DonutColor(value):null;
          break;
        case 3:
          _3 = value!=null?DonutColor(value):null;
          break;
      }
    });
    return DonutColorSwatch.primary(main: _0, light1: _1, light2: _2, ultraLight: _3);
  }

  const DonutColorSwatch.primary({required int main, DonutColor? light1, DonutColor? light2, DonutColor? ultraLight}) :
        _1 = light1,
        _2 = light2,
        _3 = ultraLight,
        super(main);

  const DonutColorSwatch.secondary({required int main, DonutColor? variant}):
        _1 = variant,
        _2 = null,
        _3 = null,
        super(main);

  const DonutColorSwatch.neutral({required int main, DonutColor? variant}):
        _1 = variant,
        _2 = null,
        _3 = null,
        super(main);

  const DonutColorSwatch.shadows({required int light, DonutColor? medium, DonutColor? dark}):
        _1 = medium,
        _2 = dark,
        _3 = null,
        super(light);

  const DonutColorSwatch.Text({required int main, DonutColor? inactive, DonutColor? inverted}):
        _1 = inactive,
        _2 = inverted,
        _3 = null,
        super(main);

  get _0 => this;
  final DonutColor? _1;
  final DonutColor? _2;
  final DonutColor? _3;

  final _len = 4;

  DonutColor operator [](T input){
    int index = input.index;
    if (index < _len) {
      return _getDonutColor(index);
    } else {
      return _getDonutColor(_len - 1);
    }
  }

  DonutColor _getDonutColor(int index) {
    switch(index) {
      case 0: return _0;
      case 1: return _1??_0;
      case 2: return _2??_1??_0;
      case 3: return _3??_2??_1??_0;
      default: return _3??_2??_1??_0;
    }
  }
}
