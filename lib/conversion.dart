class Conversion {
  static double n = 0;
  static double r = 0;

  static double find_factorial(double num) {
    double result = 1;
    int i = 1;
    for (i; i <= num; i++) {
      result *= i;
    }
    return result;
  }

  static double find_combination(double n, double r) {
    double numerator = find_factorial(n);
    double denominator = find_factorial(r) * find_factorial(n - r);
    double result = (numerator / denominator);
    return result;
  }

  static double find_permutation(double n, double r) {
    double numerator = find_factorial(n);
    double denominator = find_factorial(n - r);
    double result = numerator / denominator;
    return result;
  }
}
