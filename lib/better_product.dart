num calculation(num oldAverageRating, num numberofratings) {
  return ((oldAverageRating * numberofratings) + 1 + 5) /
      (numberofratings + 1 + 1);
}

void printBetterProduct(double oldAverageRatingA, int numberofratingsA,
    double oldAverageRatingB, int numberofratingsB) {
  var a = calculation(oldAverageRatingA, numberofratingsA);
  var b = calculation(oldAverageRatingB, numberofratingsB);
  if (a > b) {
    print("A is a better product");
  } else if (b > a) {
    print("B is a better product");
  } else {
    print("A & B both are good products");
  }
}
