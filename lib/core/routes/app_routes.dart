import 'package:bogo/features/splash/splash_screen.dart';
import 'package:go_router/go_router.dart';
import '../../features/auth/screens/interests/interest_screen.dart';
import '../services/navigation_service.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    navigatorKey: NavigationHelper.navigatorKey,
    initialLocation: '/splash',
    routes: [
      GoRoute(
        path: '/splash',
        pageBuilder: (context, state) =>
            NavigationHelper.slideFromRight(const InterestScreen(), state),
      ),

      // GoRoute(
      //   path: '/greenback',
      //   pageBuilder: (context, state) =>
      //       NavigationHelper.slideFromRight(const GreenBackground(), state),
      // ),
    ],
  );
}
