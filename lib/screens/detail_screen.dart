import 'package:dbestech_riverpod/models/user_model.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.e});
  final UserModel e;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Center(
                child: CircleAvatar(
                  maxRadius: 60,
                  backgroundImage: NetworkImage(
                    e.avatar,
                  ),
                ),
              ),
              Text("${e.firstName} ${e.lastName}"),
              Text(e.email)
            ],
          ),
        ),
      ),
    );
  }
}
