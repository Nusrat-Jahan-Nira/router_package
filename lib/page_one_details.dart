
import 'package:flutter/material.dart';

class PageOneDetails extends StatelessWidget {

  static const String routeName = 'one-details';

  const PageOneDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page One'),),
      body: const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [],
        ),
      ),
    );
  }
}
