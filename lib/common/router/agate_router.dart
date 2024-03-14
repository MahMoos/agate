import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/extensions/extensions.dart';
import '../../core/widgets/widgets.dart';
import '../../features/course/presentation/controllers/controllers.dart';
import '../../features/course/presentation/pages/pages.dart';
import '../../features/explore/presentation/pages/pages.dart';
import '../../features/user/presentation/pages/pages.dart';
import '../widgets/widgets.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

class AgateRouter {
  AgateRouter();

  static GoRouter router(WidgetRef ref) {
    return GoRouter(
      navigatorKey: _rootNavigatorKey,
      debugLogDiagnostics: true,
      initialLocation: '/',
      observers: [
        RouteObserver(),
      ],
      routes: <RouteBase>[
        ShellRoute(
          navigatorKey: _shellNavigatorKey,
          builder: (context, state, child) => AppScaffold(
            body: child,
          ),
          routes: [
            GoRoute(
              parentNavigatorKey: _shellNavigatorKey,
              name: 'home',
              path: '/',
              pageBuilder: (context, state) => AppTransitionPage.fadeIn(
                key: state.pageKey,
                name: context.strings.home,
                child: const AuthenticatedView(child: HomePage()),
              ),
            ),
            // GoRoute(
            //   parentNavigatorKey: _shellNavigatorKey,
            //   name: 'login',
            //   path: '/login',
            //   pageBuilder: (context, state) => MaterialPage(
            //     key: state.pageKey,
            //     name: 'Login',
            //     child: Scaffold(body: SingleChildScrollView(child: Padding(
            //       padding: const EdgeInsets.all(32.0),
            //       child: SignUpForm(),
            //     ))),
            //     // child: SignInScreen(
            //     //   auth: (ref.watch(authServiceProvider) as FirebaseAuthService)
            //     //       .instance,
            //     //   providers: providers,
            //     //   headerBuilder: (context, _, __) {
            //     //     return Row(
            //     //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     //       children: [
            //     //         Text(
            //     //           context.strings.welcome,
            //     //           style: context.textTheme.headlineLarge,
            //     //         ),
            //     //         IconButton(
            //     //           icon: const Icon(Icons.language),
            //     //           onPressed: () {},
            //     //         ),
            //     //       ],
            //     //     ).paddingSymmetric(vertical: 32, horizontal: 24);
            //     //   },
            //     //   sideBuilder: (context, _) {
            //     //     return Column(
            //     //       children: [
            //     //         Row(
            //     //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     //           children: [
            //     //             Text(
            //     //               context.strings.welcome,
            //     //               style: context.textTheme.headlineLarge,
            //     //             ),
            //     //             IconButton(
            //     //               icon: const Icon(Icons.language),
            //     //               onPressed: () {},
            //     //             ),
            //     //           ],
            //     //         ).paddingSymmetric(vertical: 32, horizontal: 24),
            //     //         UnDraw(
            //     //           illustration: UnDrawIllustration.login,
            //     //           color: context.primaryColor,
            //     //         ),
            //     //       ],
            //     //     );
            //     //   },
            //     //   actions: [
            //     //     AuthStateChangeAction<SignedIn>((context, state) {
            //     //       context.goNamed('home');
            //     //     }),
            //     //   ],
            //     // ),
            //   ),
            // ),
            GoRoute(
              parentNavigatorKey: _shellNavigatorKey,
              name: 'profile',
              path: '/profile',
              pageBuilder: (context, state) => MaterialPage(
                key: state.pageKey,
                name: 'Profile',
                child: const AuthenticatedView(
                  child: ProfilePage(),
                ),
              ),
              routes: [
                GoRoute(
                  parentNavigatorKey: _shellNavigatorKey,
                  name: 'wallet',
                  path: 'wallet',
                  pageBuilder: (context, state) => MaterialPage(
                    key: state.pageKey,
                    name: context.strings.wallet,
                    child: const WalletPage(),
                  ),
                  routes: [
                    GoRoute(
                      parentNavigatorKey: _shellNavigatorKey,
                      name: 'deposit',
                      path: 'deposit',
                      pageBuilder: (context, state) => MaterialPage(
                        key: state.pageKey,
                        name: context.strings.deposit,
                        child: const DepositPage(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            GoRoute(
              parentNavigatorKey: _shellNavigatorKey,
              name: 'search',
              path: '/search',
              pageBuilder: (context, state) => AppTransitionPage.fadeIn(
                key: state.pageKey,
                name: context.strings.search,
                child: const SearchPage(),
              ),
            ),
            GoRoute(
              parentNavigatorKey: _shellNavigatorKey,
              name: 'departments',
              path: '/departments',
              pageBuilder: (context, state) => AppTransitionPage.fadeIn(
                key: state.pageKey,
                name: context.strings.departments,
                child: const DepartmentsPage(),
              ),
              routes: [
                GoRoute(
                  parentNavigatorKey: _shellNavigatorKey,
                  name: 'department',
                  path: ':id',
                  pageBuilder: (context, state) {
                    final departmentId = state.pathParameters['id']!;
                    return AppTransitionPage.fadeIn(
                      key: state.pageKey,
                      name: context.strings.departments,
                      child: DepartmentPage(departmentId),
                    );
                  },
                ),
              ],
            ),
            GoRoute(
              parentNavigatorKey: _shellNavigatorKey,
              name: 'subjects',
              path: '/subjects',
              pageBuilder: (context, state) => AppTransitionPage.fadeIn(
                key: state.pageKey,
                name: context.strings.subjects,
                child: const SubjectsPage(),
              ),
              routes: [
                GoRoute(
                  parentNavigatorKey: _shellNavigatorKey,
                  name: 'subject',
                  path: ':id',
                  pageBuilder: (context, state) {
                    final sectionId = state.pathParameters['id']!;
                    return AppTransitionPage.fadeIn(
                      key: state.pageKey,
                      name: context.strings.departments,
                      child: SubjectPage(sectionId),
                    );
                  },
                ),
              ],
            ),
            GoRoute(
              parentNavigatorKey: _shellNavigatorKey,
              name: 'myCourses',
              path: '/my_courses',
              pageBuilder: (context, state) => AppTransitionPage.fadeIn(
                key: state.pageKey,
                name: context.strings.myCourses,
                child: const MyCoursesPage(),
              ),
            ),
            GoRoute(
              parentNavigatorKey: _shellNavigatorKey,
              name: 'course',
              path: '/courses/:id',
              pageBuilder: (context, state) => MaterialPage(
                key: state.pageKey,
                name: 'Course',
                fullscreenDialog: true,
                child: CoursePage(
                  courseId: state.pathParameters['id']!,
                ),
              ),
            ),
            GoRoute(
              parentNavigatorKey: _shellNavigatorKey,
              name: 'sections',
              path: '/courses/:id/sections',
              pageBuilder: (context, state) => MaterialPage(
                key: state.pageKey,
                name: 'Sections',
                child: SectionsPage(
                  courseId: state.pathParameters['id']!,
                ),
              ),
            ),
            GoRoute(
              parentNavigatorKey: _shellNavigatorKey,
              name: 'section',
              path: '/courses/:courseId/sections/:sectionId',
              pageBuilder: (context, state) => MaterialPage(
                key: state.pageKey,
                name: ref
                    .watch(sectionProvider(state.pathParameters['sectionId']!))
                    .value
                    ?.name,
                child: SectionPage(
                  courseId: state.pathParameters['courseId']!,
                  sectionId: state.pathParameters['sectionId']!,
                ),
              ),
            ),
            // GoRoute(
            //   parentNavigatorKey: _shellNavigatorKey,
            //   name: 'lectures',
            //   path: '/courses/:courseId/sections/:sectionId/lectures',
            //   pageBuilder: (context, state) => MaterialPage(
            //     key: state.pageKey,
            //     name: 'Lectures',
            //     child: LecturesPage(
            //       courseId: state.pathParameters['courseId']!,
            //       sectionId: state.pathParameters['sectionId']!,
            //     ),
            //   ),
            // ),
            GoRoute(
              parentNavigatorKey: _shellNavigatorKey,
              name: 'lecture',
              path:
                  '/courses/:courseId/sections/:sectionId/lectures/:lectureId',
              pageBuilder: (context, state) => MaterialPage(
                key: state.pageKey,
                name: ref
                    .watch(
                      lectureControllerProvider(
                        state.pathParameters['lectureId']!,
                      ),
                    )
                    .value
                    ?.title,
                child: LecturePage(
                  courseId: state.pathParameters['courseId']!,
                  sectionId: state.pathParameters['sectionId']!,
                  lectureId: state.pathParameters['lectureId']!,
                ),
              ),
            ),
          ],
        ),
      ],
      // redirect: (context, state) {
      //   final user = null; // ref.watch(authServiceProvider).currentUser;
      //   if (user == null) return '/login';
      //   return null;
      // },
      errorPageBuilder: (context, state) => MaterialPage<void>(
        key: state.pageKey,
        name: 'Not Found',
        child: Scaffold(
          appBar: AppBar(),
          body: const StatusView.pageNotFound(),
        ),
      ),
    );
  }
}

class AppTransitionPage {
  static CustomTransitionPage<void> downToUp({
    required Widget child,
    LocalKey? key,
    String? name,
  }) {
    return CustomTransitionPage<void>(
      key: key,
      child: child,
      name: name,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0, 1);
        const end = Offset.zero;
        final tween = Tween(begin: begin, end: end);
        final offsetAnimation = animation.drive(tween);
        return SlideTransition(position: offsetAnimation, child: child);
      },
    );
  }

  static CustomTransitionPage<void> endToStart({
    required Widget child,
    LocalKey? key,
    String? name,
  }) {
    return CustomTransitionPage<void>(
      key: key,
      child: child,
      name: name,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final begin = Offset(
          Directionality.of(context) == TextDirection.ltr ? 1.0 : -1.0,
          0,
        );
        const end = Offset.zero;
        final tween = Tween(begin: begin, end: end);
        final offsetAnimation = animation.drive(tween);
        return SlideTransition(
          position: offsetAnimation,
          child: ColoredBox(
            color: context.theme.colorScheme.background,
            child: child,
          ),
        );
      },
    );
  }

  static CustomTransitionPage<void> fadeIn({
    required Widget child,
    LocalKey? key,
    String? name,
  }) {
    return CustomTransitionPage<void>(
      key: key,
      child: child,
      name: name,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(opacity: animation, child: child);
      },
    );
  }
}
