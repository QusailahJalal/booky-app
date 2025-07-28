import 'package:dartz/dartz.dart';
import 'package:my_bookly_app/core/utils/errors/failure.dart';
import 'package:my_bookly_app/core/utils/use_cases/use_case.dart';
import 'package:my_bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:my_bookly_app/features/home/domain/repositories/home_repository.dart';

class FeatchNewsetBooksUseCase extends UseCase<List<BookEntity>, NoParam> {
  final HomeRepository homeRepository;

  FeatchNewsetBooksUseCase(this.homeRepository);
  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParam? param]) async {
    return await homeRepository.fechNewsetBooks();
  }
}
