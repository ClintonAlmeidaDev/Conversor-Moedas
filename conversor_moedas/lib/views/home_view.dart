import 'dart:html';

import 'package:conversor_moedas/components/currency_box.dart';
import 'package:conversor_moedas/controllers/home_controller.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late HomeController homeController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homeController = HomeController(toText: toText, fromText: fromText);
  }

  TextEditingController toText = TextEditingController();

  TextEditingController fromText = TextEditingController();

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
                  CurrencyBox(
                    selectedItem: homeController.toCurrency!,
                    controller: toText,
                    items: homeController.currencies!,
                    onChanged: (model) {
                      setState(() {
                        homeController.toCurrency = model;
                      });
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CurrencyBox(
                    selectedItem: homeController.fromCurrency!,
                    controller: fromText,
                    items: homeController.currencies!,
                    onChanged: (model) {
                      setState(() {
                        homeController.fromCurrency = model;
                      });
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.amber,
                      ),
                      onPressed: () {
                        homeController.convert();
                      },
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
