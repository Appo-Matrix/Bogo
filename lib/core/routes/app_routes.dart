import 'package:go_router/go_router.dart';
import '../services/navigation_service.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    navigatorKey: NavigationHelper.navigatorKey,
    initialLocation: '/login',
    routes: [
      // GoRoute(
      //   path: '/login',
      //   pageBuilder: (context, state) =>
      //       NavigationHelper.slideFromRight(const LoginScreen(), state),
      // ),
      // GoRoute(
      //   path: '/home',
      //   pageBuilder: (context, state) =>
      //       NavigationHelper.slideFromBottom(const HomeScreen(), state),
      // ),
    ],
  );
}


/// ✅ Usage Example of GoRouter

// Navigate using helper
// NavigationHelper.push("/home");
//
// // Back
// NavigationHelper.pop();
