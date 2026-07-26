class PaginationResponseVo<T> {
  final List<T> data;
  final int currentPage;
  final int perPage;
  final int totalOfPages;

  bool get isLastPage => totalOfPages == 0 || currentPage == totalOfPages;
  PaginationResponseVo({
    required this.data,
    required this.currentPage,
    required this.perPage,
    required this.totalOfPages,
  });
}
