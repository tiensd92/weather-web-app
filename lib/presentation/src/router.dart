import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'pages/pages.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: '/',
      path: '/',
      builder: (context, state) {
        // if (context.read<MainController>().isLoginedIn) {
        //   return const DashBoardPage();
        // }

        return const HomePage();
      },
      pageBuilder: (context, state) {
        // if (context.read<MainController>().isLoginedIn) {
        //   return buildPageWithDefaultTransition(
        //     context: context,
        //     state: state,
        //     child: const DashBoardPage(),
        //   );
        // }

        return buildPageWithDefaultTransition(
          context: context,
          state: state,
          child: const HomePage(),
        );
      },
    ),
    // GoRoute(
    //   name: SignInPage.name,
    //   path: SignInPage.path,
    //   builder: (context, state) {
    //     return const SignInPage();
    //   },
    //   pageBuilder: (context, state) {
    //     return buildPageWithDefaultTransition(
    //       context: context,
    //       state: state,
    //       child: const SignInPage(),
    //     );
    //   },
    // ),
    /*GoRoute(
      name: DashBoardPage.routerName,
      path: '/dashboard',
      builder: (context, state) {
        return const DashBoardPage();
      },
      pageBuilder: (context, state) {
        return buildPageWithDefaultTransition(
          context: context,
          state: state,
          child: const DashBoardPage(),
        );
      },
    ),
    GoRoute(
      name: UsersPage.routerName,
      path: '/users',
      builder: (context, state) {
        final params = UsersPage.parseQueryParmas(state);
        return UsersPage(params: params);
      },
      pageBuilder: (context, state) {
        final params = UsersPage.parseQueryParmas(state);

        return buildPageWithDefaultTransition(
          context: context,
          state: state,
          child: UsersPage(params: params),
        );
      },
      routes: [
        GoRoute(
          name: ManagerUserPage.routerName,
          path: ':id',
          builder: (context, state) {
            final id = state.pathParameters['id'];
            return ManagerUserPage(
              id: id == 'add-user' ? null : id,
            );
          },
          pageBuilder: (context, state) {
            final id = state.pathParameters['id'];
            return buildPageWithDefaultTransition(
              context: context,
              state: state,
              child: ManagerUserPage(
                id: id == 'add-user' ? null : id,
              ),
            );
          },
        ),
      ],
    ),
    GoRoute(
        name: SheetsPage.routerName,
        path: '/sheets',
        builder: (context, state) {
          //final params = SheetsPage.parseQueryParmas(state);
          return const SheetsPage();
        },
        pageBuilder: (context, state) {
          return buildPageWithDefaultTransition(
            context: context,
            state: state,
            child: const SheetsPage(),
          );
        },
        routes: [
          GoRoute(
            name: ManagerSheetPage.routerName,
            path: ':id',
            builder: (context, state) {
              final id = state.pathParameters['id'];
              return ManagerSheetPage(
                id: id == 'add-user' ? null : id,
              );
            },
            pageBuilder: (context, state) {
              final id = state.pathParameters['id'];
              return buildPageWithDefaultTransition(
                context: context,
                state: state,
                child: ManagerSheetPage(
                  id: id == 'add-user' ? null : id,
                ),
              );
            },
          ),
        ]),*/
  ],
);

CustomTransitionPage buildPageWithDefaultTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        FadeTransition(opacity: animation, child: child),
  );
}
