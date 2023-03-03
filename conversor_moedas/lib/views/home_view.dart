import 'dart:html';

import 'package:conversor_moedas/components/currency_box.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 30, right: 30, top: 70, bottom: 20),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    width: 250,
                    height: 250,
                  ),
                  CurrencyBox(),
                  SizedBox(
                    height: 10,
                  ),
                  CurrencyBox(),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.amber,
                      ),
                      onPressed: () {},
                      child: Text('CONVERTER'),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
