import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sign_and_share_mobile/config/routes/routes.dart';
import 'package:sign_and_share_mobile/features/auth/views/pages/log_in_page.dart';
import 'package:sign_and_share_mobile/features/auth/views/pages/sign_up_page.dart';
import 'package:sign_and_share_mobile/features/home/views/pages/home_page.dart';

class AppRouter {
  GoRouter router = GoRouter(
    initialLocation: '/home',
    routes: [
      GoRoute(
        name: Routes.logIn,
        path: '/logIn',
        pageBuilder: (context, state) => const MaterialPage(
          child: LogInPage(),
        ),
      ),
      GoRoute(
        name: Routes.signUp,
        path: '/signUp',
        pageBuilder: (context, state) => const MaterialPage(
          child: SignUpPage(),
        ),
      ),
      GoRoute(
        name: Routes.home,
        path: '/home',
        pageBuilder: (context, state) => const MaterialPage(
          child: HomePage(),
        ),
      ),
    ],
  );
}

SlideTransition buildTransition(
  BuildContext context,
  Animation<double> animation,
  Animation<double> secondaryAnimation,
  Widget child,
) {
  final tween = Tween(begin: const Offset(1, 0), end: Offset.zero).animate(
    CurvedAnimation(parent: animation, curve: Curves.easeInOut),
  );
  return SlideTransition(
    position: tween,
    child: child,
  );
}
