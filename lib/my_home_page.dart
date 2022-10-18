import 'package:dbestech_riverpod/data_provider.dart';
import 'package:dbestech_riverpod/models/user_model.dart';
import 'package:dbestech_riverpod/screens/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final data = ref.watch(userDataProvider);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Riverpod'),
        ),
        body: data.when(
          data: ((data) {
            List<UserModel> userList = data.map((e) => e).toList();
            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
              ),
              child: Column(
                children: [
                  Expanded(
                      child: ListView.builder(
                          itemCount: userList.length,
                          itemBuilder: (_, index) {
                            return InkWell(
                              onTap: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => DetailScreen(
                                    e: userList[index],
                                  ),
                                ),
                              ),
                              child: Card(
                                color: Colors.blue,
                                elevation: 4,
                                margin: const EdgeInsets.symmetric(
                                  vertical: 10,
                                ),
                                child: ListTile(
                                  title: Text(
                                    userList[index].firstName,
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                  subtitle: Text(
                                    userList[index].lastName,
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                  trailing: CircleAvatar(
                                    backgroundImage:
                                        NetworkImage(userList[index].avatar),
                                  ),
                                ),
                              ),
                            );
                          }))
                ],
              ),
            );
          }),
          error: ((err, s) => Text(
                err.toString(),
              )),
          loading: (() => const Center(
                child: CircularProgressIndicator(),
              )),
        ));
  }
}
