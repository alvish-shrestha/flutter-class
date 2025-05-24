class ArithemeticModel {
  final int first;
  final int second;

  ArithemeticModel({required this.first, required this.second});

  int add() {
    return first + second;
  }

  int sub() {
    return first - second;
  }

  int mul() {
    return first * second;
  }

  double div() {
    if (second == 0) {
      throw Exception("Divide by zero");
    }
    return first / second;
  }
}
