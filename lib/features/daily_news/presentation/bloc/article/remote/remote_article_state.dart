import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:news_app/features/daily_news/domain/entities/article.dart';

abstract class RemoteArticlesState extends Equatable {
  final List<ArticleEntity>? articles;

  final DioError? error;

  const RemoteArticlesState({this.articles, this.error});

  @override
  List<Object> get props => [articles!, error!];
}

class RemoteArticlesLoading extends RemoteArticlesState {
  const RemoteArticlesLoading();
}

class RemoteArticlesLoaded extends RemoteArticlesState {
  const RemoteArticlesLoaded(List<ArticleEntity> article)
      : super(articles: article);
}

class RemoteArticlesError extends RemoteArticlesState {
  const RemoteArticlesError(DioError error) : super(error: error);
}
