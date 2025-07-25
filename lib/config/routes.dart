import 'package:abstracta_to_dos/core/widgets/nav_bar_container.dart';
import 'package:abstracta_to_dos/core/widgets/session_wrapper.dart';
import 'package:abstracta_to_dos/features/summary/presentation/summary_page.dart';
import 'package:abstracta_to_dos/features/to_do/domain/model/to_do_model.dart';
import 'package:abstracta_to_dos/features/to_do/presentation/to_do_editor.dart';
import 'package:abstracta_to_dos/features/to_do/presentation/to_do_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class Routes {
  static const todos = 'todos';
  static const summary = 'summary';
  static const editTodo = 'edit-todo';
}

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');
final _mainNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'main');
final _todosNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'todos');
final _summaryNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'summary');

final GoRouter router = GoRouter(
  debugLogDiagnostics: true,
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/summary',
  routes: routes,
);

final routes = <RouteBase>[
  ShellRoute(
    navigatorKey: _mainNavigatorKey,
    builder: (context, state, child) => SessionWrapper(child: child),
    routes: [
      StatefulShellRoute(
        parentNavigatorKey: _mainNavigatorKey,
        branches: [
          StatefulShellBranch(
            navigatorKey: _summaryNavigatorKey,
            initialLocation: '/summary',
            routes: [
              GoRoute(
                path: '/summary',
                name: Routes.summary,
                pageBuilder: (context, state) {
                  return const NoTransitionPage(child: SummaryPage());
                },
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _todosNavigatorKey,
            initialLocation: '/todos',
            routes: [
              GoRoute(
                path: '/todos',
                name: Routes.todos,
                pageBuilder: (context, state) {
                  return NoTransitionPage(child: ToDoList());
                },
                routes: [
                  GoRoute(
                    path: '/edit',
                    name: Routes.editTodo,
                    pageBuilder: (context, state) {
                      final toDo = state.extra as ToDoModel?;
                      return NoTransitionPage(child: ToDoEditor(toDoModel: toDo));
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
        navigatorContainerBuilder:
            (context, navigationShell, children) =>
                NavBarContainer(navigationShell: navigationShell, children: children),
        builder: (context, state, navigationShell) => navigationShell,
      ),
    ],
  ),
];
