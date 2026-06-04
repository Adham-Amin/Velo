import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/core/routing/router_generation_config.dart';
import 'package:velo/core/services/custom_observer_bloc.dart';
import 'package:velo/core/services/shared_preferences_service.dart';
import 'package:velo/core/theme/theme_data.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Prefs.init();
  Bloc.observer = CustomObserverBloc();
  runApp(const Velo());
}

class Velo extends StatelessWidget {
  const Velo({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.light,
          theme: AppThemes.lightTheme,
          routerConfig: RouterGenerationConfig.router,
        );
      },
    );
  }
}
