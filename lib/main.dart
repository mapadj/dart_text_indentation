import 'data.dart';

main(List<String> args) {
  // Example split and join
  // String test = 'a b c';
  // print(test);
  // var splitted = test.split(' ');
  // print(splitted);
  // var result1 = splitted.join();
  // print(result1);
  // var result2 = splitted.join(' ');
  // print(result2);
  // var result3 = splitted.join('\n');
  // print(result3);

  // Example Map
  // var ints = [1, 2, 3, 4];
  // print(ints.map((e) => e + 1));

  print(addIndentCool(data, 20));
}

String addIndentComplicated(String input, int indentSpaces) {
  if (indentSpaces == 0) return input;

  List<String> paragraphs = input.split('\n');

  for (var i = 0; i < paragraphs.length; i++) {
    var oldValue = paragraphs[i];
    var newValue = ' ' * indentSpaces + oldValue;
    paragraphs[i] = newValue;
  }

  return paragraphs.join('\n');
}

String addIndentBetter(String input, int indentSpaces) {
  if (indentSpaces == 0) return input;

  List<String> paragraphs = input.split('\n');

  var newData = paragraphs.map((e) => ' ' * indentSpaces + e);

  return newData.join('\n');
}

String addIndentCool(String input, int indentSpaces) {
  if (indentSpaces == 0) return input; // return trivial solution.
  return input
      .split('\n') // We split the input into paragraphs at '\n'
      .map((e) => ' ' * indentSpaces + e) // we add indentSpaces to each element
      .join('\n'); // we join the paragraphs with '\n' separator
}

String addIndentWrong(String input, int indentSpaces) {
  if (indentSpaces == 0) return input;

  List<String> paragraphs = input.split('\n');

  paragraphs.map((e) => ' ' * indentSpaces + e);

  return paragraphs.join('\n');

  // The reason this version fails, is because map returns a new Iterable.
  // The original paragraphs list was never changed, and is returned without
  // indentation.
}
