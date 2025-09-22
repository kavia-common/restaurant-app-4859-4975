# Routing Guide

This app uses a lightweight RouterDelegate/RouteInformationParser to avoid extra dependencies.

- Define route string constants in `lib/src/app_router.dart` under `AppRoute`.
- Navigate via the router delegate:
  final router = (Router.of(context).routerDelegate as dynamic);
  router.go(AppRoute.categories, query: {'id': 'item1'});

Add new screens:
1. Create the screen in `lib/src/features/<area>/`.
2. Add a case to the switch in `_SimpleRouterDelegate.build`.
3. Use `AppRoute` constants to navigate.

Deep linking:
- The parser passes the current location string to the delegate.
- For production deep links, expand the parser to map specific paths to screens and parameters.
