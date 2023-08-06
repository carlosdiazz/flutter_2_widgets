import 'package:flutter_2_widgets/config/theme/app_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//Bool apra saber que modo usar
final isDarkModeProvider = StateProvider<bool>((ref) => true);

//Listado de colores inmutable
final colorListProvider = Provider((ref) => colorList);

//Un simple int para saber que color elegir
final selectedColorProvider = StateProvider((ref) => 0);

//Un objecto de tipo AppTheme(custom)

final themeNotifierProvider =
    StateNotifierProvider<ThemeNotifier, AppTheme>((ref) => ThemeNotifier());

class ThemeNotifier extends StateNotifier<AppTheme> {
  ThemeNotifier() : super(AppTheme());

  void toggleDarkMode() {
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }

  void changeColorIndex(int colorIndex) {
    state = state.copyWith(selectedColor: colorIndex);
  }
}
