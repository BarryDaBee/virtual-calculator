import 'package:flutter/material.dart';
import 'number_button.dart';

class CalculatorBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade800,
        borderRadius: BorderRadius.circular(20),
      ),
      height: MediaQuery.of(context).size.height / 1.3,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              width: double.infinity,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    reverse: true,
                    child: Text(
                      '0',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.yellow.shade700,
                      ),
                    ),
                  ),
                  Text(
                    '0',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.yellow.shade700,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: NumberButton(
                      number: "CL",
                      colour: Colors.red,
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: NumberButton(
                      number: "/",
                      colour: Colors.white,
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: NumberButton(
                      number: "X",
                      colour: Colors.white,
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: NumberButton(
                      number: "-",
                      colour: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: NumberButton(
                      number: "7",
                      colour: Colors.yellow.shade200,
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: NumberButton(
                      number: "8",
                      colour: Colors.yellow.shade200,
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: NumberButton(
                      number: "9",
                      colour: Colors.yellow.shade200,
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: NumberButton(
                      number: "+",
                      colour: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: GestureDetector(
                                onTap: () {},
                                child: NumberButton(
                                  number: "4",
                                  colour: Colors.yellow.shade200,
                                ),
                              ),
                            ),
                            Expanded(
                              child: GestureDetector(
                                onTap: () {},
                                child: NumberButton(
                                  number: "5",
                                  colour: Colors.yellow.shade200,
                                ),
                              ),
                            ),
                            Expanded(
                              child: GestureDetector(
                                onTap: () {},
                                child: NumberButton(
                                  number: "6",
                                  colour: Colors.yellow.shade200,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: GestureDetector(
                                onTap: () {},
                                child: NumberButton(
                                  number: "1",
                                  colour: Colors.yellow.shade200,
                                ),
                              ),
                            ),
                            Expanded(
                              child: GestureDetector(
                                onTap: () {},
                                child: NumberButton(
                                  number: "2",
                                  colour: Colors.yellow.shade200,
                                ),
                              ),
                            ),
                            Expanded(
                              child: GestureDetector(
                                onTap: () {},
                                child: NumberButton(
                                  number: "3",
                                  colour: Colors.yellow.shade200,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 2,
                              child: GestureDetector(
                                onTap: () {},
                                child: NumberButton(
                                  number: "0",
                                  colour: Colors.yellow.shade200,
                                ),
                              ),
                            ),
                            Expanded(
                              child: GestureDetector(
                                onTap: () {},
                                child: NumberButton(
                                  number: ".",
                                  colour: Colors.yellow.shade200,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: GestureDetector(
                          child: NumberButton(
                            number: "=",
                            colour: Colors.yellow.shade800,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
