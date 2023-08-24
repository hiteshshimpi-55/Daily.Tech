import 'package:news_app/features/daily_news/domain/entities/article.dart';
import '../../../../core/resources/data_state.dart';
import '../../../../core/usecases/usescase.dart';
import '../repository/article_repo.dart';

class GetSavedArticleUseCase implements UseCase<List<ArticleEntity>,void> {
  
  final ArticleRepo _articleRepo;

  GetSavedArticleUseCase(this._articleRepo);

  @override
  Future<List<ArticleEntity>> call ({void params}){
    return _articleRepo.getSavedArticles();
  }
}