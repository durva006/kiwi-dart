void searchtermexample() {
  var x = [4, 2, 5, 3, 6];
  findItem(x, 2);
}

findItem(List x, num searchTerm) {
  var found = false;
  for (var i = 0; i < x.length; i++) {
    var item = x[i];
    if (item == searchTerm) {
      found = true;
      print(i);
    }
  }
  if (!found) {
    print('notfound');
  }
}
