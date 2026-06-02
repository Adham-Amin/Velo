import 'package:go_router/go_router.dart';
import 'package:velo/features/splash/presentation/views/splash_view.dart';
import 'app_routes.dart';

class RouterGenerationConfig {
  static GoRouter router = GoRouter(
    initialLocation: AppRoutes.splash,
    routes: [
      GoRoute(
        path: AppRoutes.splash,
        name: AppRoutes.splash,
        builder: (context, state) => const SplashView(),
      ),
    ],
  );
}
