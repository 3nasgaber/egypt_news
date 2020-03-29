import 'package:egypt_news/Models/ArticlesModel.dart';

class NewsArticleViewModel {

  ArticlesModel _newsArticle;

  NewsArticleViewModel({ArticlesModel article}): _newsArticle = article;

  String get title {
    return _newsArticle.title;
  }

  String get description {
    return _newsArticle.description;
  }

  String get imageURL {
    return _newsArticle.urlToImage;
  }

  String get url {
    return _newsArticle.url;
  }

}