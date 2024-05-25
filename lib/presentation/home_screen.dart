import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "1",
              style: Theme.of(context).textTheme.displayLarge,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80),
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent),
                    child: Text("-",
                        style: Theme.of(context).textTheme.displayLarge),
                  ),
                  Spacer(),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent),
                    child: Text("+",
                        style: Theme.of(context).textTheme.displayMedium),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
