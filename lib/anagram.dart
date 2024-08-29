void main() {
  var s = isAnagram("rescue", "securex");
  print(s);
}

bool isAnagram(String a, String b) {
  if (a.length != b.length) {
    return false;
  }
  var r = a.split("");
  var t = b.split("");
  r.sort();
  t.sort();
  for (var i = 0; i < r.length; i++) {
    if (r[i] != t[i]) {
      return false;
    }
  }
  return true;
}
