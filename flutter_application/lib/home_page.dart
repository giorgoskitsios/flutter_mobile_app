import 'package:flutter/material.dart';
import 'package:flutter_application_2/login_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return const login_page();
                },
              ),
            );
          },
          child: const Text('Get started!')),
    );
  }
}
