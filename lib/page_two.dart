
import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {

  static const String routeName = 'two';

  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page Two'),),
      body: const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [],
        ),
      ),
    );
  }
}
