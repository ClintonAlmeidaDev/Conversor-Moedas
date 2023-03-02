import 'dart:html';

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
                  left: 20, right: 20, top: 100, bottom: 20),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    width: 250,
                    height: 250,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: SizedBox(
                              height: 65,
                              child: DropdownButton<dynamic>(
                                  isExpanded: true,
                                  underline: Container(
                                    height: 1,
                                    color: Colors.amber,
                                  ),
                                  items: [
                                    DropdownMenuItem(
                                      value: 0,
                                      child: Text('Real',
                                          overflow: TextOverflow.ellipsis),
                                    ),
                                    DropdownMenuItem(
                                      value: 1,
                                      child: Text('Dolar',
                                          overflow: TextOverflow.ellipsis),
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
                                    borderSide:
                                        BorderSide(color: Colors.amber))),
                          ),
                        ),
                      ],
                    ),
                  ),
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
