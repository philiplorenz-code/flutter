import 'package:http/http.dart' as http;

Future<http.Response> usermail() async {
  //return http.get(Uri.https("https://dasistallesnurge.cloud/user/login", 'usermail'));
  final response = await http
      .get(Uri.https("https://dasistallesnurge.cloud/user/login", 'usermail'));
  return response;
}
