import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CurrencyBox extends StatelessWidget {
  const CurrencyBox({super.key});

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
                child: DropdownButton<dynamic>(
                    iconEnabledColor: Colors.amber,
                    isExpanded: true,
                    underline: Container(
                      height: 1,
                      color: Colors.amber,
                    ),
                    items: [
                      DropdownMenuItem(
                        value: 0,
                        child: Text('Real', overflow: TextOverflow.ellipsis),
                      ),
                      DropdownMenuItem(
                        value: 'Dolar',
                        child: Text('Dolar', overflow: TextOverflow.ellipsis),
                      ),
                    ],
                    onChanged: (value) {}),
              )),
          Expanded(
            child: TextField(
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
