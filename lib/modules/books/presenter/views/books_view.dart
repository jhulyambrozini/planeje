import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:planeje/modules/books/presenter/viewmodels/books_viewmodel.dart';
import 'package:planeje/modules/books/presenter/widgets/books_card_widget.dart';
import 'package:planeje/modules/books/presenter/widgets/books_filter_widget.dart';
import 'package:planeje/modules/books/presenter/widgets/books_search_widget.dart';
import 'package:planeje/modules/core/presenter/theme/colors.dart';

class BooksView extends StatefulWidget {
  const BooksView({super.key});

  @override
  State<BooksView> createState() => _BooksViewState();
}

class _BooksViewState extends State<BooksView> {
  final _vm = BooksViewmodel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsTheme.background,
      body: SafeArea(
        child: ListenableBuilder(
          listenable: _vm,
          builder: (context, _) => Column(
            children: [
              _buildHeader(),
              const SizedBox(height: 16),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: BooksSearchWidget(),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: BooksFilterWidget(bookCount: _vm.bookCount),
              ),
              const SizedBox(height: 8),
              Expanded(child: _buildBookList()),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: ColorsTheme.primary,
        shape: const CircleBorder(),
        child: const Icon(Icons.add, color: ColorsTheme.primaryDark),
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          GestureDetector(
            onTap: Modular.to.pop,
            child: const Icon(Icons.arrow_back, color: Colors.white),
          ),
          const SizedBox(width: 12),
          const Text(
            'Estante Virtual',
            style: TextStyle(
              fontFamily: 'Livvic',
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBookList() {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: _vm.books.length,
      separatorBuilder: (_, __) => const SizedBox(height: 10),
      itemBuilder: (context, index) {
        final book = _vm.books[index];
        return BooksCardWidget(
          bookName: book.bookName,
          genre: book.genre,
          author: book.author,
          publisher: book.publisher,
          nationality: book.nationality,
          pages: book.pages,
          year: book.year,
        );
      },
    );
  }
}