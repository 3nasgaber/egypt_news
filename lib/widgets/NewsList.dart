import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:egypt_news/viewmodels/newsArticleViewModel.dart';

import '../Models/ArticlesModel.dart';

class NewsList extends StatelessWidget {
  final List<NewsArticleViewModel> articles;
  final Function(NewsArticleViewModel article) onSelected;

  NewsList({this.articles, this.onSelected});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: articles.length,
      itemBuilder: (context, index) {
        final article = articles[index];

        return Card(
          child: ListTile(
            onTap: () {
              this.onSelected(article);
            },
            leading: Container(
                width: 100,
                height: 100,
                child: article.imageURL == null
                    ? Image.asset("assets/images/xtest.jpg")
                    : Image.network(article.imageURL)),
            title: Text(article.title),
          ),
        );
      },
    );
  }
}
