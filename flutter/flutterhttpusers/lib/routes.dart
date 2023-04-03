import 'package:flutterhttpusers/post/view/pages/detailpage.dart';
import 'package:flutterhttpusers/post/view/pages/listpage.dart';
import 'package:go_router/go_router.dart';

class Routes {
  static const String table = 'table';
  static const String detail = 'detail';
  static final GoRouter goRouter = GoRouter(
    initialLocation: '/table',
      routes: [
        GoRoute(
          name: Routes.table,
            path: '/table',
          builder: (context, state) => ListPage(),
        ),
        GoRoute(
          name: Routes.detail,
          path: '/detail',
          builder: (context, state) => DetailPage(),
        ),
      ],
  );
}