import 'package:go_router/go_router.dart';
import 'package:my_bookly_app/core/utils/routers/routes.dart';
import 'package:my_bookly_app/features/home/presentation/views/book_details_view.dart';
import 'package:my_bookly_app/features/search/presentation/views/search_view.dart';

import '../../../features/home/presentation/views/home_view.dart';
import '../../../features/splash/presentation/views/splash_view.dart';

abstract class AppRouters {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: Routes.Splash,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(path: Routes.Home, builder: (context, state) => const HomeView()),
      GoRoute(
        path: Routes.BookDetails,
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: Routes.Search,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
