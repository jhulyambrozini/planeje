import 'package:flutter/widgets.dart';
import 'package:planeje/modules/books/domain/aggregates/completed_read_aggregate.dart';
import 'package:planeje/modules/books/domain/dtos/paging_books_dto.dart';
import 'package:planeje/modules/books/domain/entities/books_author_entity.dart';
import 'package:planeje/modules/books/domain/entities/books_publishers_entity.dart';
import 'package:planeje/modules/books/domain/errors/error_get_books_completed_read_paged.dart';
import 'package:planeje/modules/books/domain/usecases/get_book_authors_by_name_usecase.dart';
import 'package:planeje/modules/books/domain/usecases/get_book_genders_by_name_usecase.dart';
import 'package:planeje/modules/books/domain/usecases/get_book_nacionality_by_name_usecase.dart';
import 'package:planeje/modules/books/domain/usecases/get_book_publishers_by_name_usecase.dart';
import 'package:planeje/modules/books/domain/usecases/get_books_completed_read_usecase.dart';
import 'package:planeje/modules/books/domain/value_objects/books_gender_vo.dart';
import 'package:planeje/modules/books/domain/value_objects/books_nacionality_vo.dart';
import 'package:planeje/modules/core/domain/models/result_action_model.dart';
import 'package:planeje/modules/core/domain/value_objects/pagination_response_vo.dart';
import 'package:planeje/modules/core/domain/value_objects/paging_vo.dart';
import 'package:planeje/modules/core/presenter/states/list_paginate_state.dart';
import 'package:result_dart/result_dart.dart';

class BooksViewmodel extends ChangeNotifier {
  final GetBooksCompletedReadUsecase _getBooksCompletedReadUsecase;
  final GetBookAuthorsByNameUsecase _getBookAuthorsByNameUsecase;
  final GetBookGendersByNameUsecase _getBookGendersByNameUsecase;
  final GetBookNacionalityByNameUsecase _getBookNacionalityByNameUsecase;
  final GetBookPublishersByNameUsecase _getBookPublishersByNameUsecase;
  BooksViewmodel(
    this._getBooksCompletedReadUsecase,
    this._getBookAuthorsByNameUsecase,
    this._getBookGendersByNameUsecase,
    this._getBookNacionalityByNameUsecase,
    this._getBookPublishersByNameUsecase,
  );
  late final ListPaginateState<
    CompletedReadAggregate,
    GetBooksCompletedReadPagedFailure
  >
  pagingState;
  bool isLastPage = false;
  bool isFilterOpen = false;

  List<BooksGenderVo> gendersList = [];
  List<BooksPublishersEntity> publishersList = [];
  List<BooksNacionalityVo> nacionalitiesList = [];
  List<BooksAuthorEntity> authorsList = [];

  Future<void> init(Function(String) onError) async {
    pagingState = ListPaginateState(fetchFunction: fetchPage);
    pagingState.addListener(() => notifyListeners());
    await pagingState.init();
    await _getInfos(onError);
  }

  Future<
    ResultDart<
      PaginationResponseVo<CompletedReadAggregate>,
      GetBooksCompletedReadPagedFailure
    >
  >
  fetchPage(int newKey) {
    return _getBooksCompletedReadUsecase(
      PagingBooksDto(
        paging: PagingVo(page: newKey, perPage: 5),
        authorIds: [],
        genderIds: [],
        orderMostRecent: false,
        searchBookName: '',
        yearFilter: null,
      ),
    );
  }

  Future<void> _getInfos(Function(String) onError) async {
    final resultGender = await _getBookGendersByNameUsecase('');
    gendersList = resultGender.getOrDefault([]);
    if (resultGender.isError()) {
      onError(resultGender.exceptionOrNull()!.message);
    }

    final resultNacionality = await _getBookNacionalityByNameUsecase('');
    nacionalitiesList = resultNacionality.getOrDefault([]);
    if (resultNacionality.isError()) {
      onError(resultNacionality.exceptionOrNull()!.message);
    }

    final resultPublishers = await _getBookPublishersByNameUsecase('');
    publishersList = resultPublishers.getOrDefault([]);
    if (resultPublishers.isError()) {
      onError(resultPublishers.exceptionOrNull()!.message);
    }
    final resultAuthors = await _getBookAuthorsByNameUsecase('');
    authorsList = resultAuthors.getOrDefault([]);
    if (resultAuthors.isError()) {
      onError(resultAuthors.exceptionOrNull()!.message);
    }
    notifyListeners();
  }

  Future<ResultActionModel> onSearchGender(String name) async {
    final result = await _getBookGendersByNameUsecase(name);
    gendersList = result.getOrDefault([]);
    notifyListeners();
    if (result.isError()) {
      return ResultActionModel.failure(result.exceptionOrNull()!.message);
    }
    return ResultActionModel.success();
  }

  Future<ResultActionModel> onSearchNacionality(String name) async {
    final result = await _getBookNacionalityByNameUsecase(name);
    nacionalitiesList = result.getOrDefault([]);
    notifyListeners();
    if (result.isError()) {
      return ResultActionModel.failure(result.exceptionOrNull()!.message);
    }
    return ResultActionModel.success();
  }

  Future<ResultActionModel> onSearchPublisher(String name) async {
    final result = await _getBookPublishersByNameUsecase(name);
    publishersList = result.getOrDefault([]);
    notifyListeners();
    if (result.isError()) {
      return ResultActionModel.failure(result.exceptionOrNull()!.message);
    }
    return ResultActionModel.success();
  }

  Future<ResultActionModel> onSearchAuthor(String name) async {
    final result = await _getBookAuthorsByNameUsecase(name);
    authorsList = result.getOrDefault([]);
    notifyListeners();
    if (result.isError()) {
      return ResultActionModel.failure(result.exceptionOrNull()!.message);
    }
    return ResultActionModel.success();
  }

  void onSelectPublisher(){
    
  }

  Future<ResultActionModel> onSaveBook() async {
    return ResultActionModel.success();
  }
}
