import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:router_package/home_page.dart';
import 'package:router_package/page_one.dart';
import 'package:router_package/page_one_details.dart';
import 'package:router_package/page_two.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      routerConfig: _router,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }

  final _router = GoRouter(
    initialLocation: '/',
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/one',
        builder: (context, state) => const PageOne(),
        routes: [
          GoRoute(
            path: 'one-details',
            builder: (context, state) => const PageOneDetails(),
          ),
        ]
      ),
      GoRoute(
        path: '/two',
        builder: (context, state) => const PageTwo(),
      )
    ],
  );
}
