import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:news_app/features/daily_news/data/data_sources/local/app_database.dart';
import 'package:news_app/features/daily_news/data/data_sources/remote/news_api_service.dart';
import 'package:news_app/features/daily_news/data/repository/article_repo_impl.dart';
import 'package:news_app/features/daily_news/domain/repository/article_repo.dart';
import 'package:news_app/features/daily_news/domain/usecases/get_article.dart';
import 'package:news_app/features/daily_news/domain/usecases/get_saved_article.dart';
import 'package:news_app/features/daily_news/domain/usecases/remove_article.dart';
import 'package:news_app/features/daily_news/domain/usecases/save_article.dart';
import 'package:news_app/features/daily_news/presentation/bloc/article/local/local_article_bloc.dart';
import 'package:news_app/features/daily_news/presentation/bloc/article/remote/remote_article_bloc.dart';

final s1 = GetIt.instance;

Future<void> initializeDependencies() async{
  
  // Database
  final database = await $FloorAppDatabase.databaseBuilder('app_database.db').build();
  s1.registerSingleton<AppDatabase>(database);

  // Dio
  s1.registerSingleton<Dio>(Dio());

  // Dependencies
  s1.registerSingleton<NewsApiService>(NewsApiService(s1()));

  s1.registerSingleton<ArticleRepo>(
    ArticleRepoImpl(s1(),s1())
  );

  // Usecases
  s1.registerSingleton<GetArticleUseCase>(
    GetArticleUseCase(s1())
  );

  s1.registerSingleton<GetSavedArticleUseCase>(
    GetSavedArticleUseCase(s1())
  );
  
  s1.registerSingleton<SaveArticleUseCase>(
    SaveArticleUseCase(s1())
  );

  s1.registerSingleton<RemoveArticleUseCase>(
    RemoveArticleUseCase(s1())
  );


  // Blocs
  s1.registerFactory<RemoteArticlesBloc>(()=>RemoteArticlesBloc(s1()));

  s1.registerFactory<LocalArticlesBloc>(() => LocalArticlesBloc(s1(), s1(), s1()));
}