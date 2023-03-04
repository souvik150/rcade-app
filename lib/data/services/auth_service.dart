import 'dart:convert';
import 'package:http/http.dart' as http;

class AuthService {
  final _baseurl = "http://localhost:8080";

  Future login(String email, String password) async {
    final url = Uri.parse('$_baseurl/api/sessions');
    try {
      Map<String, String> headers = {"Content-type": "application/json"};

      final response = await http
          .post(url,
              headers: headers,
              body: json.encode({
                'email': email,
                'password': password,
              }))
          .then((response) {
        return response;
      });

      return response;
    } catch (e) {
      return e;
    }
  }

  Future signup(
    String firstName,
    String lastName,
    String email,
    String password,
    String passwordConfirmation,
  ) async {
    final url = Uri.parse('$_baseurl/api/users');
    try {
      Map<String, String> headers = {"Content-type": "application/json"};

      final response = http
          .post(
        url,
        headers: headers,
        body: json.encode(
          {
            'firstName': firstName,
            'lastName': lastName,
            'email': email,
            'password': password,
            'passwordConfirmation': passwordConfirmation,
          },
        ),
      )
          .then((response) {
        return response;
      });
      return response;
    } catch (e) {
      return e;
    }
  }

  Future otpVerify(String otp, String token) async {
    final url = Uri.parse('$_baseurl/users/verify');

    try {
      Map<String, String> headers = {
        "Content-type": "application/json",
        "token": token
      };

      final response = http
          .patch(
        url,
        headers: headers,
        body: json.encode(
          {
            'verifyotp': otp,
          },
        ),
      )
          .then((response) {
        return response;
      });
      return response;
    } catch (e) {
      return e;
    }
  }

  Future resendOtp() async {
    final url = Uri.parse('$_baseurl/users/verify');
    try {
      Map<String, String> headers = {"Content-type": "application/json"};

      final response = http
          .post(
        url,
        headers: headers,
      )
          .then((response) {
        return response;
      });
      return response;
    } catch (e) {
      return e;
    }
  }
}
