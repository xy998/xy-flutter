import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_sizes.dart';

class AppTheme {
  /// 亮色主题
  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: AppColors.primary,
      scaffoldBackgroundColor: AppColors.light.background,
      cardColor: AppColors.light.card,
      dividerColor: AppColors.light.divider,
      shadowColor: AppColors.light.shadow,

      // 文字主题
      textTheme: TextTheme(
        titleLarge: TextStyle(color: AppColors.light.text),
        titleMedium: TextStyle(color: AppColors.light.text),
        titleSmall: TextStyle(color: AppColors.light.text),
        bodyLarge: TextStyle(color: AppColors.light.text),
        bodyMedium: TextStyle(color: AppColors.light.textSecondary),
        bodySmall: TextStyle(color: AppColors.light.textSecondary),
      ),

      // 图标主题
      iconTheme: IconThemeData(
        color: AppColors.light.icon,
      ),

      // AppBar主题
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.light.surface,
        foregroundColor: AppColors.light.text,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: AppColors.light.icon,
        ),
      ),

      // 卡片主题
      cardTheme: CardTheme(
        color: AppColors.light.card,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),

      // 输入框主题
      inputDecorationTheme: InputDecorationTheme(
        fillColor: AppColors.light.inputFillColor,
        filled: true,
        hintStyle: TextStyle(color: AppColors.light.textHint),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.light.divider),
          borderRadius: BorderRadius.circular(8),
        ),
      ),

      // 输入框光标
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: AppColors.primary,
        selectionColor: AppColors.primary.withValues(alpha: .2),
        selectionHandleColor: AppColors.primary,
      ),

      // 按钮主题
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSizes.radiusNormal),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: AppSizes.spaceMedium,
            vertical: AppSizes.spaceNormal,
          ),
          textStyle: TextStyle(
            fontSize: AppSizes.fontNormal,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      // 分割线主题
      dividerTheme: const DividerThemeData(
        color: AppColors.divider,
        thickness: 0.5,
        space: 0,
      ),

      // 切换按钮主题
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return AppColors.primary;
          }
          return const Color(0xFF808080);
        }),
        trackColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return AppColors.primary40;
          }
          return const Color(0xFF404040);
        }),
      ),

      // 复选框主题
      checkboxTheme: CheckboxThemeData(
        fillColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return AppColors.primary;
          }
          return const Color(0xFF808080);
        }),
        checkColor: WidgetStateProperty.all(AppColors.white),
      ),

      // 单选按钮主题
      radioTheme: RadioThemeData(
        fillColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return AppColors.primary;
          }
          return const Color(0xFF808080);
        }),
      ),

      // 底部导航栏主题
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: AppColors.light.surface,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: const Color(0xFF808080),
      ),

      // 浮动按钮主题
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.white,
      ),
    );
  }

  /// 暗色主题
  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: AppColors.primaryLight,
      scaffoldBackgroundColor: AppColors.dark.background,
      cardColor: AppColors.dark.card,
      dividerColor: AppColors.dark.divider,
      shadowColor: AppColors.dark.shadow,

      // 文字主题
      textTheme: TextTheme(
        titleLarge: TextStyle(color: AppColors.dark.text),
        titleMedium: TextStyle(color: AppColors.dark.text),
        titleSmall: TextStyle(color: AppColors.dark.text),
        bodyLarge: TextStyle(color: AppColors.dark.text),
        bodyMedium: TextStyle(color: AppColors.dark.textSecondary),
        bodySmall: TextStyle(color: AppColors.dark.textSecondary),
      ),

      // 图标主题
      iconTheme: IconThemeData(
        color: AppColors.dark.icon,
      ),

      // AppBar主题
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.dark.surface,
        foregroundColor: AppColors.dark.text,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: AppColors.dark.icon,
        ),
      ),

      // 卡片主题
      cardTheme: CardTheme(
        color: AppColors.dark.card,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),

      // 输入框主题
      inputDecorationTheme: InputDecorationTheme(
        fillColor: AppColors.dark.inputFillColor,
        filled: true,
        hintStyle: TextStyle(color: AppColors.dark.textHint),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.dark.divider),
          borderRadius: BorderRadius.circular(8),
        ),
      ),

      // 输入框光标
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: AppColors.primary,
        selectionColor: AppColors.primary.withOpacity(0.2),
        selectionHandleColor: AppColors.primary,
      ),

      // 按钮主题
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSizes.radiusNormal),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: AppSizes.spaceMedium,
            vertical: AppSizes.spaceNormal,
          ),
          textStyle: TextStyle(
            fontSize: AppSizes.fontNormal,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      // 分割线主题
      dividerTheme: const DividerThemeData(
        color: Color(0xFF2C2C2C),
        thickness: 0.5,
        space: 0,
      ),

      // 切换按钮主题
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return AppColors.primary;
          }
          return const Color(0xFF808080);
        }),
        trackColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return AppColors.primary40;
          }
          return const Color(0xFF404040);
        }),
      ),

      // 复选框主题
      checkboxTheme: CheckboxThemeData(
        fillColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return AppColors.primary;
          }
          return const Color(0xFF808080);
        }),
        checkColor: WidgetStateProperty.all(AppColors.white),
      ),

      // 单选按钮主题
      radioTheme: RadioThemeData(
        fillColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return AppColors.primary;
          }
          return const Color(0xFF808080);
        }),
      ),

      // 底部导航栏主题
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: AppColors.dark.surface,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: const Color(0xFF808080),
      ),

      // 浮动按钮主题
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.white,
      ),
    );
  }
}

class AppFontFamily {
  static const dinPro = 'DINPro';
}
