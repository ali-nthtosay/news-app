import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:news_api_app/Models/news_model.dart';

class NewsController extends GetxController {
  RxList<NewsModel> trandingNewsList = <NewsModel>[].obs;
  RxList<NewsModel> newsForYouList = <NewsModel>[].obs;
  Future<void> getTrandingNews() async {
    var baseURL =
        "https://newsapi.org/v2/everything?q=tesla&from=2025-04-03&sortBy=publishedAt&apiKey=6b8b34da6e3c4f9c9b32471797108569";
    var response = await http.get(Uri.parse(baseURL));

    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);
      var articles = body["articles"];
      for (var news in articles) {
        trandingNewsList.add(NewsModel.fromJson(news));
        //print(NewsModel);
      }
    } else {
      print('Request failed with status: ${response.statusCode}');
    }
  }

  Future<void> getNewsForYou() async {
    var baseURL =
        "https://newsapi.org/v2/everything?domains=wsj.com&apiKey=6b8b34da6e3c4f9c9b32471797108569";

    var response = await http.get(Uri.parse(baseURL));

    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);
      var articles = body["articles"];
      for (var news in articles) {
        newsForYouList.add(NewsModel.fromJson(news));
        print('getNewsForYou works');
      }
    } else {
      print('getNewsForYou does not work ');
    }
  }
}
