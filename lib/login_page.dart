
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:router_package/page_one_details.dart';

class LoginPage extends StatelessWidget {

  static const String routeName = 'one';

  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login'),),
      body:  Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Login', style: Theme.of(context).textTheme.headlineLarge,)
          ],
        ),
      ),
    );
  }
}
