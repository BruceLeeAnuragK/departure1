import 'dart:convert';

import 'package:departure1/model/json_model.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class JSONProvider extends ChangeNotifier {
  List<PostModal> allPosts = [];

  JSONProvider() {
    loadJSON();
  }
  loadJSON() async {
    String res = await rootBundle.loadString("assets/JSON/posts.json");
    List allData = jsonDecode(res);
    print("=======================");
    print("Data: $allData");
    print("=======================");
    allPosts = allData.map((e) => PostModal.fromMap(data: e)).toList();
    print("=======================");
    print("Posts: $allPosts");
    print("=======================");
    notifyListeners();
  }
}
