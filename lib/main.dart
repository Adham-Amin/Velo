import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/core/routing/router_generation_config.dart';
import 'package:velo/core/services/custom_observer_bloc.dart';
import 'package:velo/core/services/shared_preferences_service.dart';
import 'package:velo/core/theme/theme_data.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Prefs.init();
  Bloc.observer = CustomObserverBloc();
  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('ar')],
      path: 'assets/translations',
      fallbackLocale: const Locale('ar'),
      child: const Velo(),
    ),
  );
}

class Velo extends StatelessWidget {
  const Velo({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 884),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          locale: context.locale,
          supportedLocales: context.supportedLocales,
          localizationsDelegates: context.localizationDelegates,
          debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.light,
          theme: AppThemes.lightTheme,
          routerConfig: RouterGenerationConfig.router,
        );
      },
    );
  }
}
