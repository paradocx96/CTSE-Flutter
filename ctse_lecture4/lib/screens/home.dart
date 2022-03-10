import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

import 'package:ctse_lecture4/screens/post_add.dart';
import 'package:ctse_lecture4/data/post.dart';
import '../components/post_list.dart';
import '../services/post_service.dart';

class Home extends StatelessWidget {
  static const String routeName = '/';
  final PostService _postService;

  const Home({Key? key})
      : _postService = const PostService(),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(PostAdd.routeName);
            },
            icon: const Icon(Icons.navigate_next),
          )
        ],
      ),
      body: FutureBuilder<List<Post>?>(
        future: _postService.getDataFromAPI(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Post>? posts = snapshot.data;
            return posts != null ? PostList(posts: posts) : const Text("Empty");
          } else if (snapshot.hasError) {
            return Center(
              child: Text("Error : ${snapshot.error.toString()}!"),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
