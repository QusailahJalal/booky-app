import 'package:dartz/dartz.dart';
import 'package:my_bookly_app/core/utils/errors/failure.dart';
import 'package:my_bookly_app/features/home/domain/entities/book_entity.dart';

abstract class HomeRepository {
  Future<Either<Failure,List<BookEntity>>> fetchFearuredBook();
  Future<Either<Failure,List<BookEntity>>> fechNewsetBook();
}
