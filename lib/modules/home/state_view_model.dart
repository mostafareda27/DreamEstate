import 'dart:convert';

import 'package:dream_estate_project/modules/home/state_model.dart';
import 'package:dream_estate_project/modules/home/state_view.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StateViewModel extends StatelessWidget {
  const StateViewModel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
        builder: (BuildContext context, WidgetRef ref, Widget? child) {
      return StateCardView(stateData: ref.watch(stateDataProvider.state).state);
    });
  }
}

StateProvider stateDataProvider = StateProvider((ref) => null);

getFavourites(String userId, var ref) async {
  http.Response response = await http.get(
    Uri.parse(
        "http://senkopx-001-site1.etempurl.com/api/FavoriteEstate/08ad4823-6aac-41b7-860a-f06e29e2dd9f"),
  );
  if (response.statusCode == 200) {
    ref.watch(stateDataProvider.state).state =
        jsonDecode(response.body)["estates"];
  }
}
