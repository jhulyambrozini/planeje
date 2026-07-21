import 'package:flutter/widgets.dart';

class CompletedReading {
  final String id;
  final String bookName;
  final String author;
  final String genre;
  final String publisher;
  final String nationality;
  final String pages;
  final String year;

  const CompletedReading({
    required this.id,
    required this.bookName,
    required this.author,
    required this.genre,
    required this.publisher,
    required this.nationality,
    required this.pages,
    required this.year,
  });
}

class BooksViewmodel extends ChangeNotifier {
  final List<CompletedReading> _books = [
    const CompletedReading(
      id: '1',
      bookName: 'Dom Casmurro',
      author: 'Machado de Assis',
      genre: 'Romance',
      publisher: 'Livraria Garnier',
      nationality: 'Brasileira',
      pages: '256p',
      year: '1899',
    ),
    const CompletedReading(
      id: '2',
      bookName: 'Cem Anos de Solidão',
      author: 'Gabriel G. Márquez',
      genre: 'Ficção',
      publisher: 'Sudamericana',
      nationality: 'Colombiana',
      pages: '417p',
      year: '1967',
    ),
    const CompletedReading(
      id: '3',
      bookName: '1984',
      author: 'George Orwell',
      genre: 'Distopia',
      publisher: 'Secker & Warburg',
      nationality: 'Inglesa',
      pages: '328p',
      year: '1949',
    ),
    const CompletedReading(
      id: '4',
      bookName: 'O Alienista',
      author: 'Machado de Assis',
      genre: 'Romance',
      publisher: 'Garnier',
      nationality: 'Brasileira',
      pages: '112p',
      year: '1882',
    ),
  ];

  List<CompletedReading> get books => _books;
  int get bookCount => _books.length;
}