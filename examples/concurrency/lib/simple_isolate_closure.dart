// ignore_for_file: undefined_method

import 'dart:convert';
import 'dart:io';
import 'dart:isolate';

const String filename = 'with_keys.json';

// #docregion main
void main() async {
  // Read some data.
  final jsonData = await Isolate.run(() async {
    final fileData = await File(filename).readAsString();
    final jsonData = jsonDecode(fileData) as Map<String, dynamic>;
    return jsonData;
  });

  // Use that data.
  print('Number of JSON keys: ${jsonData.length}');
}
// #enddocregion main
