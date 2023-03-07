import 'package:conversor_moedas/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  TextEditingController toText = TextEditingController();
  TextEditingController fromText = TextEditingController();

  final homeController = HomeCotroller(toText: toText, fromText: fromText);

  test('Deve converter de real para dolar', () {
    toText.text = '2,0';
    toText.text;
    homeController.convert();
    toText.text;
    expect(fromText.text, '0.36');
  });

  test('Deve converter de Dolar para real', () {});
}
