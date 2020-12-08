import 'package:test/test.dart';

import '../lib/data.dart';
import '../lib/main.dart';

main() {
  group('MAIN FUNCTION', () {
    group('Complicated', () {
      test('Test 0 Indentation', () {
        expect(addIndentComplicated(data, 0), data);
      });

      test('Test 1 Indentation', () {
        const input = 'line1\nline2\nline3';
        const output = ' line1\n line2\n line3';

        expect(addIndentComplicated(input, 1), output);
      });
    });

    group('Cool', () {
      test('Test 0 Indentation', () {
        expect(addIndentCool(data, 0), data);
      });

      test('Test 1 Indentation', () {
        const input = 'line1\nline2\nline3';
        const output = ' line1\n line2\n line3';

        expect(addIndentCool(input, 1), output);
      });
    });
  });
}
