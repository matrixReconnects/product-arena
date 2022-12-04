import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:product_arena/auth/auth_screen.dart';

// import 'package:provider/provider.dart';
// import 'package:shared_preferences/shared_preferences.dart';
class AuthService {
  void httpErrorHandle({
    required http.Response response,
    required BuildContext context,
    required VoidCallback onSuccess,
  }) {
    switch (response.statusCode) {
      case 200:
        //redirect to home
        onSuccess();
        break;
      case 400:
        // ERROR: email or password incorrect
        // showSnackBar(context, jsonDecode(response.body)['msg']);
        break;
      case 500:
        // ERROR: interni server error
        // showSnackBar(context, jsonDecode(response.body)['error']);
        break;
      // ERROR: nema network konekcije
      // case ???:
      //
      default:
      // showSnackBar(context, response.body);
    }
  }

  void signInUser({
    required BuildContext context,
    required String email,
    required String password,
  }) async {
    try {
      http.Response res = await http.post(
        Uri.parse('http://10.0.2.2:3000/api/signin'),
        body: jsonEncode({
          'email': email,
          'password': password,
        }),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      httpErrorHandle(
        response: res,
        context: context,
        onSuccess: () async {
          // SharedPreferences prefs = await SharedPreferences.getInstance();
          // Provider.of<UserProvider>(context, listen: false).setUser(res.body);
          //     await prefs.setString('x-auth-token', jsonDecode(res.body)['token']);
          Navigator.pushNamedAndRemoveUntil(
            context,
            '/home',
            (route) => true,
          );
        },
      );
    } catch (e) {
      // showSnackBar(context, e.toString());
    }
  }

  void logOut(BuildContext context) async {
    try {
      Navigator.pushNamedAndRemoveUntil(
        context,
        AuthScreen.routeName,
        (route) => false,
      );
    } catch (e) {
      // showSnackBar(context, e.toString());
    }
  }
}
