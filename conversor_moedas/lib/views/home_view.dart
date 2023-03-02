import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Image.asset(
              'assets/images/logo.png',
              // width: 250,
              // height: 250,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Expanded(
                      child: DropdownButton(items: [], onChanged: (value) {})),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(),
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('CONVERTER'),
            )
          ],
        ),
      ),
    );
  }
}
