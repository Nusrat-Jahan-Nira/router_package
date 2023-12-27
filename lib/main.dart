import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:router_package/home_page.dart';
import 'package:router_package/page_one.dart';
import 'package:router_package/page_one_details.dart';
import 'package:router_package/page_two.dart';
import 'package:router_package/profile_page.dart';

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
        name: HomePage.routeName,
        path: '/',
        builder: (context, state) => const HomePage(),
        routes: [
          GoRoute(
            name: ProfilePage.routeName,
            path: 'profile/:id',
            builder: (context, state){
              final id = state.pathParameters['id']!;
              return ProfilePage(id: int.parse(id));
            },
          )
        ]
      ),
      GoRoute(
        name: PageOne.routeName,
        path: '/one',
        builder: (context, state) => const PageOne(),
        routes: [
          GoRoute(
            name: PageOneDetails.routeName,
            path: 'one-details',
            builder: (context, state) => const PageOneDetails(),
          ),
        ]
      ),
      GoRoute(
        name: PageTwo.routeName,
        path: '/two',
        builder: (context, state) => const PageTwo(),
      )
    ],
  );
}
