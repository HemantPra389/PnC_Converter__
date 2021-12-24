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

  static bool result_length(double a) {
    if (a.toString().length >= 14) {
      return false;
    }
    return true;
  }

  static String find_combination(n, r) {
    if (n > r) {
      double numerator = find_factorial(n);
      double denominator = find_factorial(r) * find_factorial(n - r);
      double result = (numerator / denominator);
      if (result_length(result)) {
        return "Combination is: $result";
      } else {
        return "Combination is: NaN";
      }
    } else if (n == r) {
      return "Combination is: 1";
    } else {
      return "lesser than r";
    }
  }

  static String find_permutation(n, r) {
    if (n > r) {
      double numerator = find_factorial(n);
      double denominator = find_factorial(n - r);
      double result = numerator / denominator;
      if (result_length(result)) {
        return "Permutation is: $result";
      } else {
        return "Permutation is: NaN";
      }
    } else if (n == r) {
      return "Permutation is: 1";
    }else {
      return "n cannot be";
    }
  }
}
