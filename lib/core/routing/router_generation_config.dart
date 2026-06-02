import 'package:go_router/go_router.dart';
import 'app_routes.dart';

class RouterGenerationConfig {
  static GoRouter router = GoRouter(
    initialLocation: AppRoutes.splash,
    routes: [],
  );
}
