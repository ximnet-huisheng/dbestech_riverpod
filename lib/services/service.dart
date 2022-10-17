import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';

class ApiServices {
  String endpoint = 'https://reqres.in/api/users?page=2';

  getUsers() async {
    Response response = await get(Uri.parse(endpoint));

    if (response.statusCode == 200) {
    } else {
      throw Exception(response.reasonPhrase);
    }
  }

//   Future<List<UserModel>> getUsers() async {
//     Response response = await get(Uri.parse(endpoint));
//     if (response.statusCode == 200) {
//       final List result = jsonDecode(response.body)['data'];
//       return result.map(((e) => UserModel.fromJson(e))).toList();
//     } else {
//       throw Exception(response.reasonPhrase);
//     }
//   }
// }

// final userProvider = Provider<ApiServices>((ref) => ApiServices());
