// Book class
class Book {
  String title;
  String author;

  Book(this.title, this.author );

  void displayBookInfo() {
    print("Title: $title, Author: $author");
  }
}

// Library class
class Library {
  List<Book> books = [];

  void addBook(Book book) {
    books.add(book);
  }

  void displayAllBooks() {
    for (Book book in books) {
      book.displayBookInfo();
    }
  }
}

void main() {
  
  // Create an instance of Library
  Library library = Library();

  // Add a few Book objects to the library
  library.addBook(Book("To Kill a Mockingbird", "Harper Lee"));
  library.addBook(Book("1984", "George Orwell"));
  library.addBook(Book("Pride and Prejudice", "Jane Austen"));

  // Demonstrate the functionality of the library management system
  print("All Books in the Library:");
  library.displayAllBooks();
}