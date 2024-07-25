import 'package:http/http.dart' as http;
import 'dart:convert';



class ApiService {
  Future<Map<String, dynamic>> postData(String name, String email, String password) async {
    var backendDomain = 'http://10.0.2.2:8000';
    final url = Uri.parse('$backendDomain/v1/user/register/');
    final headers = {"Content-Type": "application/json"};
    final body = json.encode({
      'name': name,
      'email': email,
      'password': password,
    });

    try {
      final response = await http.post(url, headers: headers, body: body);

      if (response.statusCode == 200) {
        return json.decode(response.body) as Map<String, dynamic>;
      } else {
        return {'status_message': 'Error: ${response.statusCode}'};
      }
    } catch (e) {
      return {'status_message': 'Exception: $e'};
    }
  }
}
