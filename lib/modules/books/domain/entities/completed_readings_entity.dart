class CompletedReadingsEntity {
  final String id;
  final String bookName;
  final String authorId;
  final String yearOfReading;
  final String genderId;
  final String? nationalityId;
  final String? publisherId;
  final int totalNumberOfReads;
  final int totalPages;

  CompletedReadingsEntity({
    required this.id,
    required this.bookName,
    required this.authorId,
    required this.yearOfReading,
    required this.genderId,
    required this.nationalityId,
    required this.publisherId,
    required this.totalNumberOfReads,
    required this.totalPages,
  });
}
