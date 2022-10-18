import 'package:dbestech_riverpod/models/user_model.dart';
import 'package:dbestech_riverpod/services/service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userDataProvider = FutureProvider<List<UserModel>>((ref) async {
  return ref.watch(userProvider).getUsers();
});
