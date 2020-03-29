import 'dart:convert';

import 'package:egypt_news/Models/ArticlesModel.dart';
import 'package:egypt_news/utils/Constants.dart';
import 'package:http/http.dart' as http;

class Webservice {


  Future<List<ArticlesModel>> fetchHeadlinesByKeyword(String keyword) async {

    final response = await http.get(Constants.headlinesFor(keyword));

    if(response.statusCode == 200) {
      final result = jsonDecode(response.body);
      Iterable list = result["articles"];
      return list.map((json) => ArticlesModel.fromJSON(json)).toList();
    } else {
      throw Exception("Failed to get news");
    }


  }



  Future<List<ArticlesModel>> fetchTopHeadlines() async {

    final response = await http.get(Constants.TOP_HEADLINES_URL);

    if(response.statusCode == 200) {

      final result = jsonDecode(response.body);
      Iterable list = result["articles"];
      return list.map((article) => ArticlesModel.fromJSON(article)).toList();

    } else {
      throw Exception("Failed to get top news");
    }

  }
}