import 'package:donutcolors/src/donut_color.dart';
import 'package:donutcolors/src/swatch_enums.dart';

export 'src/donut_color.dart';
export 'src/swatch_enums.dart';


/// Color library of Donut
/// Use this library of colors to build your Flutter applications.
/// Example - To use color [blue] with 30% opacity
/// DonutColors.blue[0.3]
class DonutColors {
  const DonutColors({
    required this.background,
    required this.surface,
    required this.primary,
    required this.secondary,
    required this.neutral,
    required this.shadow,
    required this.text,
    required this.error
  });

  final DonutColor background;
  final DonutColor surface;
  final DonutColorSwatch<Primary> primary;
  final DonutColorSwatch<Secondary> secondary;
  final DonutColorSwatch<Neutral> neutral;
  final DonutColorSwatch<TextSwatch> text;
  final DonutColorSwatch<Shadows> shadow;
  final DonutColor error;
}

final DonutDyes = DonutColors(
    background: const DonutColor(0xFFFAFAFA),
    surface: const DonutColor(0xFFFFFFFF),
    primary: const DonutColorSwatch.primary(main: 0xFF1E7BEE,
      light1: const DonutColor(0xFF549BF2),
      light2: const DonutColor(0xFF7AB1F5),
      ultraLight: const DonutColor(0xFFA0C8F8)
    ),
    secondary: const DonutColorSwatch.secondary(main: 0xFFEF5DA8,
      variant: const DonutColor(0xFFF6A2CD)
    ),
    neutral: const DonutColorSwatch.neutral(main: 0xFFE0E0E0,
      variant: const DonutColor(0xFFD0D0D0)
    ),
    text: const DonutColorSwatch.Text(main: 0xFF303030,
      inactive: const DonutColor(0xFF7A7A7A),
      inverted: const DonutColor(0xFFFFFFFF),
    ),
    shadow: const DonutColorSwatch.shadows(light: 0x15000000,
        medium: const DonutColor(0x1F000000),
        dark: const DonutColor(0x28000000)
    ),
  error: const DonutColor(0xFFEA4335)
);
