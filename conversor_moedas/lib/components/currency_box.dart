import 'package:conversor_moedas/models/currency_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CurrencyBox extends StatelessWidget {
  final List<CurrencyModel> items;
  final TextEditingController controller;
  final void Function(CurrencyModel? model) onChanged;
  final CurrencyModel selectedItem;

  const CurrencyBox(
      {super.key,
      required this.items,
      required this.controller,
      required this.onChanged,
      required this.selectedItem});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: SizedBox(
              height: 65,
              child: DropdownButton<CurrencyModel>(
                iconEnabledColor: Colors.amber,
                isExpanded: true,
                value: selectedItem,
                underline: Container(
                  height: 1,
                  color: Colors.amber,
                ),
                items: items
                    .map(
                        (e) => DropdownMenuItem(value: e, child: Text(e.name!)))
                    .toList(),
                onChanged: onChanged,
              ),
            ),
          ),
          Expanded(
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber),
                  ),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber))),
            ),
          ),
        ],
      ),
    );
  }
}
