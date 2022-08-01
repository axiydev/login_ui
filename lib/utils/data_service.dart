import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_ui/model/common_model.dart';

class JsonDataService {
  static Future<CommonModel>? getData(BuildContext context) async {
    try {
      String data = await DefaultAssetBundle.of(context)
          .loadString('assets/database/data.json');
      return CommonModel.fromJson(json.decode(data));
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    return CommonModel.fromJson({});
  }

  static Future<CommonModel>? getDataOther() async {
    try {
      String data = await rootBundle.loadString('assets/database/data.json');
      return CommonModel.fromJson(json.decode(data));
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    return CommonModel.fromJson({});
  }
}
