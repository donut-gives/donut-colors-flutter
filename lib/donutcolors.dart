import 'package:donutcolors/src/donut_color.dart';
import 'package:donutcolors/src/swatch_enums.dart';

export 'src/donut_color.dart';
export 'src/swatch_enums.dart';


/// Color library of Donut
/// Use this library of colors to build your Flutter applications.
/// Example - To use color [blue] with 30% opacity
/// DonutColors.blue[0.3]
class DonutColors {
  DonutColors({
    background = 0xFFFAFAFA,
    surface = 0xFFFFFFFF,
    primaryMain = 0xFF1E7BEE,
    primaryLight1 = 0xFF549BF2,
    primaryLight2 = 0xFF7AB1F5,
    primaryUltraLight = 0xFFA0C8F8,
    secondaryMain = 0xFFEF5DA8,
    secondaryVariant = 0xFFF6A2CD,
    neutralMain = 0xFFE0E0E0,
    neutralVariant = 0xFFD0D0D0,
    textMain = 0xFF303030,
    textInactive = 0xFF7A7A7A,
    textInverted = 0xFFFFFFFF,
    shadowLight = 0x15000000,
    shadowMedium = 0x1F000000,
    shadowDark = 0x28000000,
    error = 0xFFEA4335
  }):
      this.background = DonutColor(background),
      this.surface = DonutColor(surface),
      this.primary = DonutColorSwatch(primaryMain,
          {
            Primary.main: primaryMain,
            Primary.light1: primaryLight1,
            Primary.light2: primaryLight2,
            Primary.ultralight: primaryUltraLight
          }),
  this.secondary = DonutColorSwatch(secondaryMain,
      {
        Secondary.main: secondaryMain,
        Secondary.variant: secondaryVariant
      }),
  this.neutral = DonutColorSwatch(neutralMain,
      {
        Neutral.main: neutralMain,
        Neutral.variant: neutralVariant
      }),
  this.text = DonutColorSwatch(textMain,
      {
        TextSwatch.main: textMain,
        TextSwatch.inactive: textInactive,
        TextSwatch.inverted: textInverted
      }),
  this.shadow = DonutColorSwatch(shadowLight,
      {
        Shadows.light: shadowLight,
        Shadows.medium: shadowMedium,
        Shadows.dark: shadowDark
      }),
  this.error = DonutColor(error);

  final DonutColor background;
  final DonutColor surface;
  final DonutColorSwatch<Primary> primary;
  final DonutColorSwatch<Secondary> secondary;
  final DonutColorSwatch<Neutral> neutral;
  final DonutColorSwatch<TextSwatch> text;
  final DonutColorSwatch<Shadows> shadow;
  final DonutColor error;
}

final DonutDyes = DonutColors();