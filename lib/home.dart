import 'package:flutter/material.dart';
import 'package:flutter_application_1/next.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  void _showBottom(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          color: Colors.amber,
          child: Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => const MyNext()),
                  ),
                );
              },
              child: const Text(
                "hello pressed me !",
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "model bottom",
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _showBottom(context),
          child: const Text(
            "show bottom sheet",
          ),
        ),
      ),
    );
  }
}
