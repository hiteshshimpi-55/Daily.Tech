import 'package:news_app/core/resources/data_state.dart';
import 'package:news_app/features/daily_news/domain/entities/article.dart';

import '../../../../core/usecases/usescase.dart';
import '../repository/article_repo.dart';

class GetArticleUseCase implements UseCase<DataState<List<ArticleEntity>>,void> {
  
  final ArticleRepo _articleRepo;

  GetArticleUseCase(this._articleRepo);

  @override
  Future<DataState<List<ArticleEntity>>> call ({void params}){
    return _articleRepo.getNewsArticle();
  }
}