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

  static String find_combination(n,r) {
    double numerator = find_factorial(n);
    double denominator = find_factorial(r) * find_factorial(n - r);
    double result = (numerator / denominator);
    return result.toString();
  }

  static String find_permutation(n,r) {
    double numerator = find_factorial(n);
    double denominator = find_factorial(n - r);
    double result = numerator / denominator;
    return result.toString();
  }
}
