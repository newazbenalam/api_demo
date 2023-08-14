/// GET POST PUT DELETE
import 'dart:convert';

import 'package:http/http.dart' as http;

Future<String> getGetData() async {
  const apiUrl = 'http://www.boredapi.com/api/activity';

  final response = await http.get(Uri.parse(apiUrl));
  print(response.body.toString());
  print(response.statusCode.toString());
  return response.body.toString();
}

Future<String> getPostData() async {
  const apiUrl = 'http://jsonplaceholder.typicode.com/posts';
  Map<String, String> header = {'Content-type': 'application/json'};
  Map payload = {
    'title': 'foo',
    'body': 'bar',
    'userId': 1,
  };

  final response = await http.post(Uri.parse(apiUrl),
      body: jsonEncode(payload), headers: header);
  print(response.body.toString());
  print(response.statusCode.toString());
  return response.body.toString();
}
