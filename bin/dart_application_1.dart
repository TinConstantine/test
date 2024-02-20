import 'dart:io';

void main(List<String> arguments) {
  // String? input = stdin.readLineSync();
  print(printString("hfdawhwhcoomdd"));
  // print(printString(input!));
}

List<String> printString(String str) {
  List<String> output = [];
  for (int i = 0; i < str.length; i++) {
    if (i < str.length - 1 &&
        (str[i] == 'a' || str[i] == 'd' || str[i] == 'e' || str[i] == 'o')) {
      bool res = checkVieLetter(first: str[i], second: str[i + 1]);
      String letter = str[i];
      if (res) {
        letter += str[i + 1];
        output.add(letter);
        i++;
      }
    } else if (str[i] == 'w') {
      output.add(str[i]);
    }
  }

  return output;
}

bool checkVieLetter({String? first, String? second}) {
  switch (first) {
    case "a":
      return second == "a" || second == "w";
    case "d":
      return second == "d";
    case "o":
      return second == "o" || second == "w";
    case "e":
      return second == "e";
    default:
      return false;
  }
}
