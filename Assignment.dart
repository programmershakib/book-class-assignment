class Book {
  // Properties of the Book class
  String title;
  String author;
  int publicationYear;
  int pagesRead;

  // Static property to keep track of total books created
  static int totalBooks = 0;

  // Constructor
  Book(this.title, this.author, this.publicationYear, this.pagesRead) {
    // Increment the static totalBooks property each time a new book is created
    totalBooks++;
  }

  // Method to add pages read to the pagesRead property
  void read(int pages) {
    pagesRead += pages;
  }

  // Getter methods
  int getPagesRead() => pagesRead;
  String getTitle() => title;
  String getAuthor() => author;
  int getPublicationYear() => publicationYear;

  // Method to calculate and return the age of the book
  int getBookAge() {
    int currentYear = DateTime.now().year;
    return currentYear - publicationYear;
  }
}

void main() {
  // Creating three Book objects
  Book book1 = Book("To Kill a Mockingbird", "Harper Lee", 1960, 0);
  Book book2 = Book("1984", "George Orwell", 1949, 0);
  Book book3 = Book("The Great Gatsby", "F. Scott Fitzgerald", 1925, 0);

  // reading pages
  book1.read(100);
  book2.read(50);
  book3.read(120);

  // Displaying information for each book
  print("Book 1:");
  print("Title: ${book1.getTitle()}");
  print("Author: ${book1.getAuthor()}");
  print("Publication Year: ${book1.getPublicationYear()}");
  print("Pages Read: ${book1.getPagesRead()}");
  print("Book Age: ${book1.getBookAge()} years\n");

  print("Book 2:");
  print("Title: ${book2.getTitle()}");
  print("Author: ${book2.getAuthor()}");
  print("Publication Year: ${book2.getPublicationYear()}");
  print("Pages Read: ${book2.getPagesRead()}");
  print("Book Age: ${book2.getBookAge()} years\n");

  print("Book 3:");
  print("Title: ${book3.getTitle()}");
  print("Author: ${book3.getAuthor()}");
  print("Publication Year: ${book3.getPublicationYear()}");
  print("Pages Read: ${book3.getPagesRead()}");
  print("Book Age: ${book3.getBookAge()} years\n");

  // Displaying the total number of books created
  print("Total number of books created: ${Book.totalBooks}");
}
