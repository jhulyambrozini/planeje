import 'package:planeje/modules/books/domain/aggregates/completed_read_aggregate.dart';
import 'package:planeje/modules/books/domain/entities/books_author_entity.dart';
import 'package:planeje/modules/books/domain/entities/books_publishers_entity.dart';
import 'package:planeje/modules/books/domain/value_objects/books_gender_vo.dart';
import 'package:planeje/modules/books/domain/value_objects/books_nacionality_vo.dart';

class CompletedReadingMapper {
  static CompletedReadAggregate fromDb(Map<String, dynamic> row) {
    return CompletedReadAggregate(
      id: row['id'] as String,
      bookName: row['book_name'] as String,
      yearOfReading: row['year_of_reading'] as String,
      totalNumberOfReads: row['total_number_of_reads'] as int,
      totalPages: row['total_pages'] as int,
      author: BooksAuthorEntity(
        id: row['author_id'] as String,
        fullName: row['author_full_name'] as String,
        gender: row['author_gender'] as String?,
        nacionality: row['author_nacionality'] != null
            ? BooksNacionalityVo(
                id: row['author_nacionality'] as String,
                description: row['author_nacionality'] as String,
              )
            : null,
      ),
      gender: BooksGenderVo(
        id: row['gender_id'] as String,
        description: row['gender_description'] as String,
      ),
      nacionality: row['nacionality_id'] != null
          ? BooksNacionalityVo(
              id: row['nacionality_id'] as String,
              description: row['nacionality_description'] as String,
            )
          : null,
      publisher: row['publisher_id'] != null
          ? BooksPublishersEntity(
              id: row['publisher_id'] as String,
              name: row['publisher_name'] as String,
              nacionality: row['publisher_nacionality_id'] != null
                  ? BooksNacionalityVo(
                      id: row['publisher_nacionality_id'] as String,
                      description:
                          row['publisher_nacionality_description'] as String,
                    )
                  : null,
            )
          : null,
    );
  }
}
