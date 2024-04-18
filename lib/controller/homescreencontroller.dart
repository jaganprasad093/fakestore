import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:flutter_application_1/model/apimodel.dart';

import 'package:http/http.dart' as http;

class homescreencontroller with ChangeNotifier {
  bool isLoading = false;
  var myData;
  List<Fakestore>? FakeStorelist = [];
  Fakestore? resmodel;
  Future getData() async {
    isLoading = true;
    notifyListeners();
    Uri url = Uri.parse("https://fakestoreapi.com/products");
    var res = await http.get(url);
    if (res.statusCode == 200) {
      var decodedData = jsonDecode(res.body);

      resmodel = Fakestore.fromJson(decodedData);
      // myData = resmodel;
      // resmodel = Fakestore.fromJson(decodedData);
      isLoading = false;
      notifyListeners();
    } else {
      print("failed");
    }
    isLoading = false;
    notifyListeners();
  }

  Future addData() async {}
}
