import 'package:calculator_app/core/app_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../locator.dart';
import 'number_button.dart';

class CalculatorBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AppViewModel>.reactive(
      builder: (context, model, child) => Container(
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
                        model.expression.isEmpty || model.expression == null
                            ? '0'
                            : model.expression,
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.yellow.shade700,
                        ),
                      ),
                    ),
                    Text(
                      model.solution.isEmpty || model.solution == null
                          ? '0'
                          : model.solution,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.yellow.shade700.withOpacity(0.5),
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
                        onLongPress: model.clearAll,
                        onPressed: (_) {
                          model.popLastEntry();
                        },
                        colour: Colors.red,
                      ),
                    ),
                  ),
                  Expanded(
                    child: NumberButton(
                      number: "/",
                      onPressed: model.addCharacterToExpression,
                      colour: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: NumberButton(
                      number: "x",
                      onPressed: model.addCharacterToExpression,
                      colour: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: NumberButton(
                      number: "-",
                      onPressed: model.addCharacterToExpression,
                      colour: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: NumberButton(
                      number: "7",
                      onPressed: model.addCharacterToExpression,
                      colour: Colors.yellow.shade200,
                    ),
                  ),
                  Expanded(
                    child: NumberButton(
                      number: "8",
                      onPressed: model.addCharacterToExpression,
                      colour: Colors.yellow.shade200,
                    ),
                  ),
                  Expanded(
                    child: NumberButton(
                      number: "9",
                      onPressed: model.addCharacterToExpression,
                      colour: Colors.yellow.shade200,
                    ),
                  ),
                  Expanded(
                    child: NumberButton(
                      number: "+",
                      colour: Colors.white,
                      onPressed: model.addCharacterToExpression,
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
                                child: NumberButton(
                                  number: "4",
                                  colour: Colors.yellow.shade200,
                                  onPressed: model.addCharacterToExpression,
                                ),
                              ),
                              Expanded(
                                child: NumberButton(
                                  number: "5",
                                  colour: Colors.yellow.shade200,
                                  onPressed: model.addCharacterToExpression,
                                ),
                              ),
                              Expanded(
                                child: NumberButton(
                                  number: "6",
                                  onPressed: model.addCharacterToExpression,
                                  colour: Colors.yellow.shade200,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: NumberButton(
                                  number: "1",
                                  onPressed: model.addCharacterToExpression,
                                  colour: Colors.yellow.shade200,
                                ),
                              ),
                              Expanded(
                                child: NumberButton(
                                  number: "2",
                                  onPressed: model.addCharacterToExpression,
                                  colour: Colors.yellow.shade200,
                                ),
                              ),
                              Expanded(
                                child: NumberButton(
                                  onPressed: model.addCharacterToExpression,
                                  number: "3",
                                  colour: Colors.yellow.shade200,
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
                                child: NumberButton(
                                  number: "0",
                                  onPressed: model.addCharacterToExpression,
                                  colour: Colors.yellow.shade200,
                                ),
                              ),
                              Expanded(
                                child: NumberButton(
                                  onPressed: model.addCharacterToExpression,
                                  number: ".",
                                  colour: Colors.yellow.shade200,
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
                          child: NumberButton(
                            number: "=",
                            onPressed: (_) {
                              model.makeCalculate();
                            },
                            colour: Colors.yellow.shade800,
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
      ),
      viewModelBuilder: () => locator<AppViewModel>(),
    );
  }
}
