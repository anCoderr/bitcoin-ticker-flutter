import 'dart:convert';

import 'package:bitcoin_ticker/constants.dart';
import 'package:http/http.dart' as http;

class Networking {
  Future<dynamic> getJsonData(String url, String baseId, String quoteId) async {
    http.Response response =
        await http.get(url + '/$baseId/$quoteId?apikey=$kApiKey');
    return jsonDecode(response.body);
  }
}
