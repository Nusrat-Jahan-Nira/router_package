import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:router_package/page_one.dart';
import 'package:router_package/page_two.dart';

class HomePage extends StatelessWidget {

  static const String routeName = 'home';

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: (){
                // context.go('/one');
                context.goNamed(PageOne.routeName);
              },
              child: const Text('Page One'),
            ),
            ElevatedButton(
              onPressed: (){
                // context.go('/two');
                context.goNamed(PageTwo.routeName);
              },
              child: const Text('Page Two'),
            )
          ],
        ),
      ),
    );
  }
}
