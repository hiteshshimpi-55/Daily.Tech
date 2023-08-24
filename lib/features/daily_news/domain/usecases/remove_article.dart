import 'package:news_app/features/daily_news/domain/entities/article.dart';
import '../../../../core/usecases/usescase.dart';
import '../repository/article_repo.dart';

class RemoveArticleUseCase implements UseCase<void,ArticleEntity> {
  
  final ArticleRepo _articleRepo;

  RemoveArticleUseCase(this._articleRepo);

  @override
  Future<void> call ({ArticleEntity? params}){
    return _articleRepo.removeArticle(params!);
  }
}