import 'package:go_router/go_router.dart';
import 'package:keep_note/presentation/ui/edit/edit_screen.dart';
import 'package:keep_note/routing/routes.dart';

import '../presentation/ui/listing/listing_screen.dart';

final route = GoRouter(
  initialLocation: Routes.noteListing,
  routes: [
    GoRoute(
      path: Routes.noteListing,
      builder: (context, state) => ListingScreen(),
    ),
    GoRoute(
      path: Routes.noteEdit,
      builder: (context, state) => EditScreen(),
      routes: [
        GoRoute(
          path: ':id',
          builder: (context, state) {
            final id = int.parse(state.pathParameters['id']!);
            return EditScreen(id: id);
          },
        ),
      ],
    ),
  ],
);
