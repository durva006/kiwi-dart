void main() {
  // ixb
  // 3x3 matrix
  final List<List<int>> a = [
    [2, 4, 3],
    [5, 7, 8],
    [9, 6, 7],
  ];
  final List<List<int>> b = [
    [3, 5, 7],
    [8, 3, 4],
    [5, 7, 8],
  ];
  final result = addMatrix(a, b);
  printMatrix(result);
}

void printMatrix(List<List<int>> matrix) {
  for (final row in matrix) {
    print(row);
  }
}

List<List<int>> addMatrix(List<List<int>> x, List<List<int>> y) {
  final List<List<int>> result = [
    [],
    [],
    [],
  ];
  // nested loop
  // n^2
  for (int rowIndex = 0; rowIndex < 3; rowIndex++) {
    final xRow = x[rowIndex];
    final yRow = y[rowIndex];
    final resultRow = result[rowIndex];
    for (int colIndex = 0; colIndex < 3; colIndex++) {
      final xElement = xRow[colIndex];
      final yElement = yRow[colIndex];
      final sum = xElement + yElement;
      resultRow.add(sum);
    }
  }
  return result;
}
