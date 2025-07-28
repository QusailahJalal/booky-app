import 'package:my_bookly_app/features/home/domain/entities/book_entity.dart';

abstract class HomeRepository {
  Future<List<BookEntity>> fetchFearuredBook();
  Future<List<BookEntity>> fechNewsetBook();
}
