import 'package:flutter/material.dart';

/// See https://m3.material.io/styles/color/the-color-system/tokens
const baselineColorScheme = _BaselineColorScheme(
  white: Colors.white,
  black: Colors.black,
  sys: _SystemToken(
    light: _ThemeToken(
      primary: Color(0xff6750a4),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffeaddff),
      onPrimaryContainer: Color(0xff21005d),
      primaryFixed: Color(0xffeaddff),
      onPrimaryFixed: Color(0xff21005d),
      primaryFixedDim: Color(0xffd0bcff),
      onPrimaryFixedVariant: Color(0xff4f378b),
      secondary: Color(0xff625b71),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffe8def8),
      onSecondaryContainer: Color(0xff1d192b),
      secondaryFixed: Color(0xffe8def8),
      onSecondaryFixed: Color(0xff1d192b),
      secondaryFixedDim: Color(0xffccc2dc),
      onSecondaryFixedVariant: Color(0xff4a4458),
      tertiary: Color(0xff7d5260),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffffd8e4),
      onTertiaryContainer: Color(0xff31111d),
      tertiaryFixed: Color(0xffffd8e4),
      onTertiaryFixed: Color(0xff31111d),
      tertiaryFixedDim: Color(0xffefb8c8),
      onTertiaryFixedVariant: Color(0xff633b48),
      error: Color(0xffb3261e),
      onError: Color(0xffffffff),
      errorContainer: Color(0xfff9dedc),
      onErrorContainer: Color(0xff410e0b),
      outline: Color(0xff79747e),
      background: Color(0xfffef7ff),
      onBackground: Color(0xff1d1b20),
      surface: Color(0xfffef7ff),
      onSurface: Color(0xff1d1b20),
      surfaceVariant: Color(0xffe7e0ec),
      onSurfaceVariant: Color(0xff49454f),
      inverseSurface: Color(0xff322f35),
      inverseOnSurface: Color(0xfff5eff7),
      inversePrimary: Color(0xffd0bcff),
      shadow: Color(0xff000000),
      surfaceTint: Color(0xff6750a4),
      outlineVariant: Color(0xffcac4d0),
      scrim: Color(0xff000000),
      surfaceContainerHighest: Color(0xffe6e0e9),
      surfaceContainerHigh: Color(0xffece6f0),
      surfaceContainer: Color(0xfff3edf7),
      surfaceContainerLow: Color(0xfff7f2fa),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceBright: Color(0xfffef7ff),
      surfaceDim: Color(0xffded8e1),
    ),
    dark: _ThemeToken(
      primary: Color(0xffd0bcff),
      onPrimary: Color(0xff381e72),
      primaryContainer: Color(0xff4f378b),
      onPrimaryContainer: Color(0xffeaddff),
      primaryFixed: Color(0xffeaddff),
      onPrimaryFixed: Color(0xff21005d),
      primaryFixedDim: Color(0xffd0bcff),
      onPrimaryFixedVariant: Color(0xff4f378b),
      secondary: Color(0xffccc2dc),
      onSecondary: Color(0xff332d41),
      secondaryContainer: Color(0xff4a4458),
      onSecondaryContainer: Color(0xffe8def8),
      secondaryFixed: Color(0xffe8def8),
      onSecondaryFixed: Color(0xff1d192b),
      secondaryFixedDim: Color(0xffccc2dc),
      onSecondaryFixedVariant: Color(0xff4a4458),
      tertiary: Color(0xffefb8c8),
      onTertiary: Color(0xff492532),
      tertiaryContainer: Color(0xff633b48),
      onTertiaryContainer: Color(0xffffd8e4),
      tertiaryFixed: Color(0xffffd8e4),
      onTertiaryFixed: Color(0xff31111d),
      tertiaryFixedDim: Color(0xffefb8c8),
      onTertiaryFixedVariant: Color(0xff633b48),
      error: Color(0xfff2b8b5),
      onError: Color(0xff601410),
      errorContainer: Color(0xff8c1d18),
      onErrorContainer: Color(0xfff9dedc),
      outline: Color(0xff938f99),
      background: Color(0xff141218),
      onBackground: Color(0xffe6e0e9),
      surface: Color(0xff141218),
      onSurface: Color(0xffe6e0e9),
      surfaceVariant: Color(0xff49454f),
      onSurfaceVariant: Color(0xffcac4d0),
      inverseSurface: Color(0xffe6e0e9),
      inverseOnSurface: Color(0xff322f35),
      inversePrimary: Color(0xff6750a4),
      shadow: Color(0xff000000),
      surfaceTint: Color(0xffd0bcff),
      outlineVariant: Color(0xff49454f),
      scrim: Color(0xff000000),
      surfaceContainerHighest: Color(0xff36343b),
      surfaceContainerHigh: Color(0xff2b2930),
      surfaceContainer: Color(0xff211f26),
      surfaceContainerLow: Color(0xff1d1b20),
      surfaceContainerLowest: Color(0xff0f0d13),
      surfaceBright: Color(0xff3b383e),
      surfaceDim: Color(0xff141218),
    ),
  ),
  ref: _RefToken(
    primary: _PrimaryColors(
      primary0: Color(0xff000000),
      primary10: Color(0xff21005d),
      primary20: Color(0xff381e72),
      primary30: Color(0xff4f378b),
      primary40: Color(0xff6750a4),
      primary50: Color(0xff7f67be),
      primary60: Color(0xff9a82db),
      primary70: Color(0xffb69df8),
      primary80: Color(0xffd0bcff),
      primary90: Color(0xffeaddff),
      primary95: Color(0xfff6edff),
      primary99: Color(0xfffffbfe),
      primary100: Color(0xffffffff),
    ),
    secondary: _SecondaryColors(
      secondary0: Color(0xff000000),
      secondary10: Color(0xff1d192b),
      secondary20: Color(0xff332d41),
      secondary30: Color(0xff4a4458),
      secondary40: Color(0xff625b71),
      secondary50: Color(0xff7a7289),
      secondary60: Color(0xff958da5),
      secondary70: Color(0xffb0a7c0),
      secondary80: Color(0xffccc2dc),
      secondary90: Color(0xffe8def8),
      secondary95: Color(0xfff6edff),
      secondary99: Color(0xfffffbfe),
      secondary100: Color(0xffffffff),
    ),
    tertiary: _TertiaryColors(
      tertiary0: Color(0xff000000),
      tertiary10: Color(0xff31111d),
      tertiary20: Color(0xff492532),
      tertiary30: Color(0xff633b48),
      tertiary40: Color(0xff7d5260),
      tertiary50: Color(0xff986977),
      tertiary60: Color(0xffb58392),
      tertiary70: Color(0xffd29dac),
      tertiary80: Color(0xffefb8c8),
      tertiary90: Color(0xffffd8e4),
      tertiary95: Color(0xffffecf1),
      tertiary99: Color(0xfffffbfa),
      tertiary100: Color(0xffffffff),
    ),
    error: _ErrorColors(
      error0: Color(0xff000000),
      error10: Color(0xff410e0b),
      error20: Color(0xff601410),
      error30: Color(0xff8c1d18),
      error40: Color(0xffb3261e),
      error50: Color(0xffdc362e),
      error60: Color(0xffe46962),
      error70: Color(0xffec928e),
      error80: Color(0xfff2b8b5),
      error90: Color(0xfff9dedc),
      error95: Color(0xfffceeee),
      error99: Color(0xfffffbf9),
      error100: Color(0xffffffff),
    ),
    neutral: _NeutralColors(
      neutral0: Color(0xff000000),
      neutral4: Color(0xff0f0d13),
      neutral6: Color(0xff141218),
      neutral10: Color(0xff1d1b20),
      neutral12: Color(0xff211f26),
      neutral17: Color(0xff2b2930),
      neutral20: Color(0xff322f35),
      neutral22: Color(0xff36343b),
      neutral24: Color(0xff3b383e),
      neutral30: Color(0xff48464c),
      neutral40: Color(0xff605d64),
      neutral50: Color(0xff79767d),
      neutral60: Color(0xff938f96),
      neutral70: Color(0xffaea9b1),
      neutral80: Color(0xffcac5cd),
      neutral87: Color(0xffded8e1),
      neutral90: Color(0xffe6e0e9),
      neutral92: Color(0xffece6f0),
      neutral94: Color(0xfff3edf7),
      neutral95: Color(0xfff5eff7),
      neutral96: Color(0xfff7f2fa),
      neutral99: Color(0xfffffbff),
      neutral100: Color(0xffffffff),
    ),
    neutralVariant: _NeutralVariantColors(
      neutralVariant0: Color(0xff000000),
      neutralVariant10: Color(0xff1d1a22),
      neutralVariant20: Color(0xff322f37),
      neutralVariant30: Color(0xff49454f),
      neutralVariant40: Color(0xff605d66),
      neutralVariant50: Color(0xff79747e),
      neutralVariant60: Color(0xff938f99),
      neutralVariant70: Color(0xffaea9b4),
      neutralVariant80: Color(0xffcac4d0),
      neutralVariant90: Color(0xffe7e0ec),
      neutralVariant95: Color(0xfff5eefa),
      neutralVariant99: Color(0xfffffbfe),
      neutralVariant100: Color(0xffffffff),
    ),
  ),
  keyColors: _KeyColors(
    primary: Color(0xff6750a4),
  ),
  source: _SourceColor(
    seed: Color(0xff6750a4),
  ),
);

class _BaselineColorScheme {
  const _BaselineColorScheme({
    required this.white,
    required this.black,
    required this.sys,
    required this.ref,
    required this.keyColors,
    required this.source,
  });

  final Color white;
  final Color black;
  final _SystemToken sys;
  final _RefToken ref;
  final _KeyColors keyColors;
  final _SourceColor source;
}

class _SystemToken {
  const _SystemToken({
    required this.light,
    required this.dark,
  });

  final _ThemeToken light;
  final _ThemeToken dark;
}

class _ThemeToken {
  const _ThemeToken({
    required this.primary,
    required this.onPrimary,
    required this.primaryContainer,
    required this.onPrimaryContainer,
    required this.primaryFixed,
    required this.onPrimaryFixed,
    required this.primaryFixedDim,
    required this.onPrimaryFixedVariant,
    required this.secondary,
    required this.onSecondary,
    required this.secondaryContainer,
    required this.onSecondaryContainer,
    required this.secondaryFixed,
    required this.onSecondaryFixed,
    required this.secondaryFixedDim,
    required this.onSecondaryFixedVariant,
    required this.tertiary,
    required this.onTertiary,
    required this.tertiaryContainer,
    required this.onTertiaryContainer,
    required this.tertiaryFixed,
    required this.onTertiaryFixed,
    required this.tertiaryFixedDim,
    required this.onTertiaryFixedVariant,
    required this.error,
    required this.onError,
    required this.errorContainer,
    required this.onErrorContainer,
    required this.outline,
    required this.background,
    required this.onBackground,
    required this.surface,
    required this.onSurface,
    required this.surfaceVariant,
    required this.onSurfaceVariant,
    required this.inverseSurface,
    required this.inverseOnSurface,
    required this.inversePrimary,
    required this.shadow,
    required this.surfaceTint,
    required this.outlineVariant,
    required this.scrim,
    required this.surfaceContainerHighest,
    required this.surfaceContainerHigh,
    required this.surfaceContainer,
    required this.surfaceContainerLow,
    required this.surfaceContainerLowest,
    required this.surfaceBright,
    required this.surfaceDim,
  });

  final Color primary;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color primaryFixed;
  final Color onPrimaryFixed;
  final Color primaryFixedDim;
  final Color onPrimaryFixedVariant;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color secondaryFixed;
  final Color onSecondaryFixed;
  final Color secondaryFixedDim;
  final Color onSecondaryFixedVariant;
  final Color tertiary;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color onTertiaryContainer;
  final Color tertiaryFixed;
  final Color onTertiaryFixed;
  final Color tertiaryFixedDim;
  final Color onTertiaryFixedVariant;
  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;
  final Color outline;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color surfaceVariant;
  final Color onSurfaceVariant;
  final Color inverseSurface;
  final Color inverseOnSurface;
  final Color inversePrimary;
  final Color shadow;
  final Color surfaceTint;
  final Color outlineVariant;
  final Color scrim;
  final Color surfaceContainerHighest;
  final Color surfaceContainerHigh;
  final Color surfaceContainer;
  final Color surfaceContainerLow;
  final Color surfaceContainerLowest;
  final Color surfaceBright;
  final Color surfaceDim;
}

class _RefToken {
  const _RefToken({
    required this.primary,
    required this.secondary,
    required this.tertiary,
    required this.error,
    required this.neutral,
    required this.neutralVariant,
  });

  final _PrimaryColors primary;
  final _SecondaryColors secondary;
  final _TertiaryColors tertiary;
  final _ErrorColors error;
  final _NeutralColors neutral;
  final _NeutralVariantColors neutralVariant;
}

class _PrimaryColors {
  const _PrimaryColors({
    required this.primary0,
    required this.primary10,
    required this.primary20,
    required this.primary30,
    required this.primary40,
    required this.primary50,
    required this.primary60,
    required this.primary70,
    required this.primary80,
    required this.primary90,
    required this.primary95,
    required this.primary99,
    required this.primary100,
  });

  final Color primary0;
  final Color primary10;
  final Color primary20;
  final Color primary30;
  final Color primary40;
  final Color primary50;
  final Color primary60;
  final Color primary70;
  final Color primary80;
  final Color primary90;
  final Color primary95;
  final Color primary99;
  final Color primary100;
}

class _SecondaryColors {
  const _SecondaryColors({
    required this.secondary0,
    required this.secondary10,
    required this.secondary20,
    required this.secondary30,
    required this.secondary40,
    required this.secondary50,
    required this.secondary60,
    required this.secondary70,
    required this.secondary80,
    required this.secondary90,
    required this.secondary95,
    required this.secondary99,
    required this.secondary100,
  });

  final Color secondary0;
  final Color secondary10;
  final Color secondary20;
  final Color secondary30;
  final Color secondary40;
  final Color secondary50;
  final Color secondary60;
  final Color secondary70;
  final Color secondary80;
  final Color secondary90;
  final Color secondary95;
  final Color secondary99;
  final Color secondary100;
}

class _TertiaryColors {
  const _TertiaryColors({
    required this.tertiary0,
    required this.tertiary10,
    required this.tertiary20,
    required this.tertiary30,
    required this.tertiary40,
    required this.tertiary50,
    required this.tertiary60,
    required this.tertiary70,
    required this.tertiary80,
    required this.tertiary90,
    required this.tertiary95,
    required this.tertiary99,
    required this.tertiary100,
  });

  final Color tertiary0;
  final Color tertiary10;
  final Color tertiary20;
  final Color tertiary30;
  final Color tertiary40;
  final Color tertiary50;
  final Color tertiary60;
  final Color tertiary70;
  final Color tertiary80;
  final Color tertiary90;
  final Color tertiary95;
  final Color tertiary99;
  final Color tertiary100;
}

class _ErrorColors {
  const _ErrorColors({
    required this.error0,
    required this.error10,
    required this.error20,
    required this.error30,
    required this.error40,
    required this.error50,
    required this.error60,
    required this.error70,
    required this.error80,
    required this.error90,
    required this.error95,
    required this.error99,
    required this.error100,
  });

  final Color error0;
  final Color error10;
  final Color error20;
  final Color error30;
  final Color error40;
  final Color error50;
  final Color error60;
  final Color error70;
  final Color error80;
  final Color error90;
  final Color error95;
  final Color error99;
  final Color error100;
}

class _NeutralColors {
  const _NeutralColors({
    required this.neutral0,
    required this.neutral4,
    required this.neutral6,
    required this.neutral10,
    required this.neutral12,
    required this.neutral17,
    required this.neutral20,
    required this.neutral22,
    required this.neutral24,
    required this.neutral30,
    required this.neutral40,
    required this.neutral50,
    required this.neutral60,
    required this.neutral70,
    required this.neutral80,
    required this.neutral87,
    required this.neutral90,
    required this.neutral92,
    required this.neutral94,
    required this.neutral95,
    required this.neutral96,
    required this.neutral99,
    required this.neutral100,
  });

  final Color neutral0;
  final Color neutral4;
  final Color neutral6;
  final Color neutral10;
  final Color neutral12;
  final Color neutral17;
  final Color neutral20;
  final Color neutral22;
  final Color neutral24;
  final Color neutral30;
  final Color neutral40;
  final Color neutral50;
  final Color neutral60;
  final Color neutral70;
  final Color neutral80;
  final Color neutral87;
  final Color neutral90;
  final Color neutral92;
  final Color neutral94;
  final Color neutral95;
  final Color neutral96;
  final Color neutral99;
  final Color neutral100;
}

class _NeutralVariantColors {
  const _NeutralVariantColors({
    required this.neutralVariant0,
    required this.neutralVariant10,
    required this.neutralVariant20,
    required this.neutralVariant30,
    required this.neutralVariant40,
    required this.neutralVariant50,
    required this.neutralVariant60,
    required this.neutralVariant70,
    required this.neutralVariant80,
    required this.neutralVariant90,
    required this.neutralVariant95,
    required this.neutralVariant99,
    required this.neutralVariant100,
  });

  final Color neutralVariant0;
  final Color neutralVariant10;
  final Color neutralVariant20;
  final Color neutralVariant30;
  final Color neutralVariant40;
  final Color neutralVariant50;
  final Color neutralVariant60;
  final Color neutralVariant70;
  final Color neutralVariant80;
  final Color neutralVariant90;
  final Color neutralVariant95;
  final Color neutralVariant99;
  final Color neutralVariant100;
}

class _KeyColors {
  const _KeyColors({
    required this.primary,
  });

  final Color primary;
}

class _SourceColor {
  const _SourceColor({
    required this.seed,
  });

  final Color seed;
}
