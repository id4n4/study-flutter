import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/router/app_routes.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: AppRoutes.home,
  routes: [
    GoRoute(
      path: AppRoutes.home,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: AppRoutes.buttons,
      builder: (context, state) => const ButtonsScreen(),
    ),
    GoRoute(
      path: AppRoutes.cards,
      builder: (context, state) => const CardsScreen(),
    ),
  ],
);
