import 'package:news_app/core/resources/data_state.dart';
import 'package:news_app/features/daily_news/data/models/article.dart';
import 'package:news_app/features/daily_news/domain/entities/article.dart';
import '../../../../core/usecases/usescase.dart';
import '../repository/article_repo.dart';

class SaveArticleUseCase implements UseCase<void,ArticleEntity> {
  
  final ArticleRepo _articleRepo;

  SaveArticleUseCase(this._articleRepo);

  @override
  Future<void> call ({ArticleEntity? params}){
    return _articleRepo.savedArticle(params!);
  }
}