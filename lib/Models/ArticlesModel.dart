
class ArticlesModel{

  final String title;
  final String description;
  final String urlToImage;
  final String url;

  ArticlesModel({this.title, this.description, this.urlToImage, this.url});

  factory ArticlesModel.fromJSON(Map<String, dynamic> json) {
    return ArticlesModel(
        title: json["title"],
        description: json["description"],
        urlToImage: json["urlToImage"],
        url: json["url"]
    );
  }

}