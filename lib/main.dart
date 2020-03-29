import 'package:flutter/material.dart';
import 'package:egypt_news/viewmodels/newsArticleListViewModel.dart';
import 'package:provider/provider.dart';

import 'Pages/newsListPage.dart';


void main() => runApp(App());

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        title: "News",
        home:
        ChangeNotifierProvider(
            builder: (_) => NewsArticleListViewModel(),
            child: NewsListPage()
        )
    );

  }

}