import 'package:news_app/core/resources/data_state.dart';
import 'package:news_app/features/daily_news/domain/entities/article.dart';

abstract class ArticleRepo{

  // API Methods
  Future<DataState<List<ArticleEntity>>> getNewsArticle();

  // Database Methods
  Future<List<ArticleEntity>> getSavedArticles();

  Future<void> savedArticle(ArticleEntity article);

  Future<void> removeArticle(ArticleEntity article);
}