import 'package:equatable/equatable.dart';

class GithubTrendingArticleModel extends Equatable {
  final String author;
  final String name;
  final String url;
  final String description;
  final String language;
  final String languageColor;
  final int stars;
  final int forks;
  final int currentPeriodStars;
  final String builtByAvatar;
  final String builtByUsername;
  final dynamic rawObject;

  GithubTrendingArticleModel(
      {this.author,
      this.name,
      this.url,
      this.description,
      this.language,
      this.languageColor,
      this.stars,
      this.forks,
      this.currentPeriodStars,
      this.builtByAvatar,
      this.builtByUsername,
      this.rawObject})
      : super([name]);

  static GithubTrendingArticleModel fromRawObject(dynamic rawObject) {
    return GithubTrendingArticleModel(
        author: rawObject["author"],
        name: rawObject["name"],
        url: rawObject["url"],
        description: rawObject["description"],
        language: rawObject["language"],
        languageColor: rawObject["languageColor"],
        stars: rawObject["stars"],
        forks: rawObject["forks"],
        currentPeriodStars: rawObject["currentPeriodStars"],
        builtByAvatar: rawObject["builtBy"][0]["avatar"],
        builtByUsername: rawObject["builtBy"][0]["username"],
        rawObject: rawObject);
  }
}
