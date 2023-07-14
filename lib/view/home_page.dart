import 'package:departure1/provider/json_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Departure",
            style: TextStyle(color: Colors.green, fontSize: 25)),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),
      body: Consumer<JSONProvider>(
        builder: (context, provider, child) {
          return provider.allPosts.isNotEmpty
              ? ListView.builder(
                  itemCount: provider.allPosts.length,
                  itemBuilder: (context, index) => ListTile(
                        title: Text("${provider.allPosts[index].title}"),
                        leading: Text("${provider.allPosts[index].id}"),
                      ))
              : Center(
                  child: CircularProgressIndicator(),
                );
        },
      ),
    );
  }
}
