import 'package:planeje/modules/books/domain/dtos/paging_books_dto.dart';
import 'package:planeje/modules/core/external/local_database/constants/table_name.dart';

class BooksScrpit {
  static String getPaged(PagingBooksDto dto) {
    final offset = dto.paging.perPage * (dto.paging.page - 1);
    List<String> whereClauses = [];

    if (dto.authorIds.isNotEmpty) {
      final placeholders = dto.authorIds.join(', ');
      whereClauses.add('cr.author_id IN ($placeholders)');
    }

    if (dto.genderIds.isNotEmpty) {
      final placeholders = dto.genderIds.join(', ');
      whereClauses.add('cr.gender_id IN ($placeholders)');
    }

    if (dto.searchBookName.isNotEmpty) {
      whereClauses.add("cr.book_name LIKE '%${dto.searchBookName}%'");
    }

    if (dto.yearFilter != null) {
      whereClauses.add("cr.year_of_reading = '${dto.yearFilter}'");
    }

    final whereSql =
        whereClauses.isEmpty
            ? ''
            : 'AND ${whereClauses.join(' AND ')}';

    return '''
      SELECT
        cr.id,
        cr.book_name,
        cr.year_of_reading,
        cr.total_number_of_reads,
        cr.total_pages,
        cr.created_at,
        a.id AS author_id,
        a.full_name AS author_full_name,
        a.gender AS author_gender,
        a.nationality AS author_nationality,
        g.id AS gender_id,
        g.description AS gender_description,
        n.id AS nationality_id,
        n.description AS nationality_description,
        p.id AS publisher_id,
        p.name AS publisher_name,
        pn.id AS publisher_nationality_id,
        pn.description AS publisher_nationality_description
      FROM ${TableName.completedReadings} cr
      LEFT JOIN ${TableName.booksAuthor} a ON cr.author_id = a.id
      LEFT JOIN ${TableName.booksGender} g ON cr.gender_id = g.id
      LEFT JOIN ${TableName.booksNationality} n ON cr.nationality_id = n.id
      LEFT JOIN ${TableName.booksPublisher} p ON cr.publisher_id = p.id
      LEFT JOIN ${TableName.booksNationality} pn ON p.nationality_id = pn.id
      WHERE cr.deleted_at IS NULL
      $whereSql
      ORDER BY cr.year_of_reading ${dto.orderMostRecent ? 'ASC' : 'DESC'}
      LIMIT ${dto.paging.perPage}
      OFFSET $offset
    ''';
  }

  static String count(PagingBooksDto dto) {
    List<String> whereClauses = [];

    if (dto.authorIds.isNotEmpty) {
      final placeholders = dto.authorIds.join(', ');
      whereClauses.add('cr.author_id IN ($placeholders)');
    }

    if (dto.genderIds.isNotEmpty) {
      final placeholders = dto.genderIds.join(', ');
      whereClauses.add('cr.gender_id IN ($placeholders)');
    }

    if (dto.searchBookName.isNotEmpty) {
      whereClauses.add("cr.book_name LIKE '%${dto.searchBookName}%'");
    }

    if (dto.yearFilter != null) {
      whereClauses.add("cr.year_of_reading = '${dto.yearFilter}'");
    }

    final whereSql =
        whereClauses.isEmpty
            ? ''
            : 'AND ${whereClauses.join(' AND ')}';

    return '''
      SELECT COUNT(*) AS total
      FROM ${TableName.completedReadings} cr
      WHERE cr.deleted_at IS NULL
      $whereSql
    ''';
  }
}
