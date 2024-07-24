import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  Future<void> postData(String name, String email, String password) async {
    //final url = 'http://10.0.2.2:8000/v1/user/register';
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
        // Successful response
        print('Response data: ${response.body}'
        
        );
      } else {
        // Error response
        print('Error: ${response.statusCode}');
      }
    } catch (e) {
      print('Exception: $e');
    }
  }
}