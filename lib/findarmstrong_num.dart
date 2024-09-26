import 'dart:io';

bool isArmstrongNumber(String number) {
  var totalNumber = BigInt.from(0);

  for (int i = 0; i < number.length; i++) {
    int tempValue = int.parse(number[i]);

    totalNumber += BigInt.from(tempValue).pow(number.length);
  }

  return totalNumber.toString() == number;
}

void findArmstrongNumber() {
  stdout.write(isArmstrongNumber('11513221'));
}
