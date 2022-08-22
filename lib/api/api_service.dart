// https://blog.codemagic.io/rest-api-in-flutter/
// https://www.geeksforgeeks.org/implementing-rest-api-in-flutter/
// https://www.tutorialspoint.com/flutter/flutter_accessing_rest_api.htm
// https://docs.flutter.dev/cookbook/networking/fetch-data

// Integrating an API into a Flutter app

// Step 1: Get the API URL and endpoints.
// Step 2: Add relevant packages into the app (http, dio, chopper, etc.).
// Step 3: Create a constant file that stores URLs and endpoints.
// Step 4: Create a model class to parse the JSON.
// Step 5: Create a file that handles the API call, and write specific methods to fetch and parse data.
// Step 6: Use the data in your app.

import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:widgets/api/api_constants.dart';
import 'package:widgets/api/user_model.dart';


class ApiService {
  Future<List<UserModel>?> getUsers() async {
    try {
      var url = Uri.parse(ApiConstants.baseUrl + ApiConstants.usersEndpoint);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        List<UserModel> _model = userModelFromJson(response.body);
        return _model;
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
