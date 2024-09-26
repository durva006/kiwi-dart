import 'dart:io';

num calculation(num oldAverageRating, num numberofratings) {
  return ((oldAverageRating * numberofratings) + 1 + 5) /
      (numberofratings + 1 + 1);
}

void printBetterProduct(double oldAverageRatingA, int numberofratingsA,
    double oldAverageRatingB, int numberofratingsB) {
  var a = calculation(oldAverageRatingA, numberofratingsA);
  var b = calculation(oldAverageRatingB, numberofratingsB);
  if (a > b) {
    stdout.write('A is a better product');
  } else if (b > a) {
    stdout.write('B is a better product');
  } else {
    stdout.write('A & B both are good products');
  }
}
