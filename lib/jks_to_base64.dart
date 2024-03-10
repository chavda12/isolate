import 'dart:convert';
import 'dart:io';

Future<String> jksToBase64(String jksFilePath) async {
  File jksFile = File(jksFilePath);
  List<int> bytes = await jksFile.readAsBytes();
  String base64String = base64Encode(bytes);
  return base64String;
}

void main(List<String> arguments) async {
  if (arguments.length != 1) {
    print('Usage: dart jks_to_base64.dart <jks_file_path>');
    return;
  }

  String jksFilePath = arguments.first;
  String base64Data = await jksToBase64(jksFilePath);
  print(base64Data);
}
