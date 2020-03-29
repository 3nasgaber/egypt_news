class Constants {
  static String TOP_HEADLINES_URL =  "https://newsapi.org/v2/top-headlines?country=eg&apiKey=API KEY";

  static String headlinesFor(String keyword) {

    return  "https://newsapi.org/v2/everything?q=$keyword&apiKey= API KEY";

  }
}