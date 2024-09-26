import 'dart:io';

void lAndSElements() {
  var x = [45, 86, 12, 5, 10];
  var largestValue = x[0];
  var smallestValue = x[0];

  for (var i = 0; i < x.length; i++) {
    if (x[i] > largestValue) {
      largestValue = x[i];
    }
    if (x[i] < smallestValue) {
      smallestValue = x[i];
    }
  }
  stdout.write('Smallest value in the list:$smallestValue');
  stdout.write('Largest value in the list:$largestValue');
}

doubt