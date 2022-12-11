import 'package:donutcolors/src/donut_color.dart';
import 'package:donutcolors/src/swatch_enums.dart';

export 'src/donut_color.dart';
export 'src/swatch_enums.dart';


/// Color library of Donut
/// Use this library of colors to build your Flutter applications.
/// Example - To use color [blue] with 30% opacity
/// DonutColors.blue[0.3]
class DonutColors {
  DonutColors._();

  static const DonutColor background = DonutColor(0xFFFFFFFF);
  static const DonutColor surface = DonutColor(0xFFFAFCFF);

  static final DonutColorSwatch<Primary> primary = DonutColorSwatch(0xFF1E7BEE,
      {
        Primary.main: 0xFF1E7BEE,
        Primary.light1: 0xFF1D9BF0,
        Primary.light2: 0xFFB3D3F9,
        Primary.ultralight: 0xFFD8E9FD
      });

  static final DonutColorSwatch<Secondary> secondary = DonutColorSwatch(0xFFEF5DA8, {Secondary.main: 0xFFEF5DA8});

  static final DonutColorSwatch<TextSwatch> text = DonutColorSwatch(0xFF28282A,
      {
        TextSwatch.display: 0xFF28282A,
        TextSwatch.body: 0xFF676B71,
        TextSwatch.inactive: 0xFF9A9DA1,
        TextSwatch.inverted: 0xFFFFFFFF
      });
  
  static final DonutColorSwatch<Shadows> shadow = DonutColorSwatch(0xFFD4D4D4,
      {
        Shadows.dark: 0xFFD4D4D4,
        Shadows.light: 0x3328282A,
        Shadows.ultralight: 0x26000000
      });
}