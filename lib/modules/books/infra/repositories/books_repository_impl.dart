import 'package:planeje/modules/books/domain/aggregates/completed_readings_aggregate.dart';
import 'package:planeje/modules/books/domain/dtos/paging_books_dto.dart';
import 'package:planeje/modules/books/domain/entities/books_author_entity.dart';
import 'package:planeje/modules/books/domain/entities/books_publishers_entity.dart';
import 'package:planeje/modules/books/domain/errors/error_get_book_authors.dart';
import 'package:planeje/modules/books/domain/errors/error_get_book_genders.dart';
import 'package:planeje/modules/books/domain/errors/error_get_books_paged.dart';
import 'package:planeje/modules/books/domain/errors/error_save_full_read.dart';
import 'package:planeje/modules/books/domain/repositories/books_repository.dart';
import 'package:planeje/modules/books/domain/value_objects/books_gender_vo.dart';
import 'package:planeje/modules/books/domain/value_objects/books_nacionality_vo.dart';
import 'package:planeje/modules/books/infra/datasources/book_nacionality_datasource.dart';
import 'package:planeje/modules/core/domain/value_objects/pagination_response_vo.dart';
import 'package:result_dart/src/result_dart_base.dart';

class BooksRepositoryImpl implements BooksRepository {
  final BooksDatasource _datasource;

  BooksRepositoryImpl(this._datasource);
  @override
  Future<
    ResultDart<
      PaginationResponseVo<CompletedReadingsAggregate>,
      GetBooksPagedFailure
    >
  >
  getPaged(PagingBooksDto dto) async {
    try {
      final response = await _datasource.getPaged(dto);
      final count = await _datasource.countCompletingReading(dto);

      final data = response
          .map(
            (row) => CompletedReadingsAggregate(
              id: row['id'] as String,
              bookName: row['book_name'] as String,
              yearOfReading: row['year_of_reading'] as String,
              totalNumberOfReads: row['total_number_of_reads'] as int,
              totalPages: row['total_pages'] as int,
              author: BooksAuthorEntity(
                id: row['author_id'] as String,
                fullName: row['author_full_name'] as String,
                gender: row['author_gender'] as String?,
                nationality: row['author_nationality'] != null
                    ? BooksNacionalityVo(
                        id: row['author_nationality'] as String,
                        description: row['author_nationality'] as String,
                      )
                    : null,
              ),
              gender: BooksGenderVo(
                id: row['gender_id'] as String,
                description: row['gender_description'] as String,
              ),
              nationality: row['nationality_id'] != null
                  ? BooksNacionalityVo(
                      id: row['nationality_id'] as String,
                      description: row['nationality_description'] as String,
                    )
                  : null,
              publisher: row['publisher_id'] != null
                  ? BooksPublishersEntity(
                      id: row['publisher_id'] as String,
                      name: row['publisher_name'] as String,
                      nationality: row['publisher_nationality_id'] != null
                          ? BooksNacionalityVo(
                              id: row['publisher_nationality_id'] as String,
                              description:
                                  row['publisher_nationality_description']
                                      as String,
                            )
                          : null,
                    )
                  : null,
            ),
          )
          .toList();

      return Success(
        PaginationResponseVo(
          data: data,
          currentPage: dto.paging.page,
          perPage: dto.paging.perPage,
          totalOfPages: count,
        ),
      );
    } catch (error) {
      return Failure(
        ErrorGetBooksPaged(
          message: 'Ocorreu um erro ao buscar histórico de leitura',
          description: '[ERROR/DB] => $error',
        ),
      );
    }
  }

  @override
  Future<ResultDart<String, SaveFullReadFailure>> save(
    CompletedReadingsAggregate data,
  ) async {
    try {
      await _datasource.save(data);

      return Success('Sucesso');
    } catch (error) {
      return Failure(
        ErrorSaveFullRead(
          message: 'Ocorreu um erro ao salvar leitura',
          description: '[ERROR/DB] => $error',
        ),
      );
    }
  }

  @override
  Future<ResultDart<List<BooksAuthorEntity>, GetBookAuthorsFailure>>
  getAuthors() async {
    try {
      final rows = await _datasource.getAuthors();
      final data = rows
          .map(
            (row) => BooksAuthorEntity(
              id: row['id'] as String,
              fullName: row['full_name'] as String,
              gender: row['gender'] as String?,
              nationality: row['nationality'] != null
                  ? BooksNacionalityVo(
                      id: row['nationality'] as String,
                      description: row['nationality'] as String,
                    )
                  : null,
            ),
          )
          .toList();

      return Success(data);
    } catch (error) {
      return Failure(
        ErrorGetBookAuthors(
          message: 'Ocorreu um erro ao buscar autores literários',
          description: '[ERROR/DB] => $error',
        ),
      );
    }
  }

  @override
  Future<ResultDart<List<BooksGenderVo>, GetBookGendersFailure>>
  getGender() async {
    try {
      final rows = await _datasource.getGender();
      final data = rows
          .map(
            (row) => BooksGenderVo(
              id: row['id'] as String,
              description: row['description'] as String,
            ),
          )
          .toList();

      return Success(data);
    } catch (error) {
      return Failure(
        ErrorGetBookGenders(
          message: 'Ocorreu um erro ao buscar generos literátios',
          description: '[ERROR/DB] => $error',
        ),
      );
    }
  }
}
