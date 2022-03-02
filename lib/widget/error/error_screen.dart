
import 'package:flutter/material.dart';
import 'package:flutter_goroute_demo/route/name_route.dart';
import 'package:go_router/go_router.dart';


class ErrorScreen extends StatelessWidget {
  final Exception? exception;
  const ErrorScreen({
    Key? key,
    this.exception,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SelectableText(exception.toString()),
            TextButton(
              onPressed: () => context.goNamed(defaultNameRoute), 
              child: const Text('Home'))
          ],
        ),
      ),
    );
  }
}
