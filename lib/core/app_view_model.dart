import 'package:stacked/stacked.dart';
import 'package:math_expressions/math_expressions.dart';

class AppViewModel extends BaseViewModel {
  String expression = '0';
  String solution = '0';
  void addCharacterToExpression(String character) {
    List conditions = [
      expression.endsWith('+'),
      expression.endsWith('-'),
      expression.endsWith('.'),
      expression.endsWith('x'),
      expression.endsWith('/'),
    ];
    print(expression);

    if (['x', '-', '/', '+', '.'].contains(character) &&
        !expression.endsWith('-') &&
        !expression.endsWith('/') &&
        !expression.endsWith('x') &&
        !expression.endsWith('+') &&
        !expression.endsWith('.')) {
      expression += character;
    } else if ('0123456789'.contains(character)) {
      expression += character;
      if (conditions.every((element) => true) && expression.isNotEmpty) {
        calculate();
      }
    }

    notifyListeners();
  }

  void calculate() {
    Parser p = Parser();
    Expression exp = p.parse(expression.replaceAll('x', '*'));
    ContextModel cm = ContextModel();
    num eval = exp.evaluate(EvaluationType.REAL, cm);
    solution = eval.toString();
    if (solution.substring(solution.length - 2, solution.length) == '.0') {
      solution = solution.substring(0, solution.length - 2);
    }

    notifyListeners();
  }

  void clearAll() {
    expression = '0';
    solution = '0';
    notifyListeners();
  }

  void makeCalculate() {
    if (expression.isEmpty) {
      expression = solution;
    } else {
      calculate();
      expression = solution;
    }

    notifyListeners();
  }

  void popLastEntry() {
    if (expression != '0' && !(expression.length <= 1)) {
      expression = expression.substring(0, expression.length - 1);
    } else if ((expression.length <= 1)) {
      expression = '0';
    }

    notifyListeners();
  }
}
