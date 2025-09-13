

class Book {
  String title;
  String author;
  double price;

  Book(this.title, this.author, this.price);

  double discountedPrice(double discountPercent) {
    return price-(price*discountPercent/100);
  }
}

void main() {
  Book book1 = Book("Harry Potter", "J. K. Rowling", 400.99);
  Book book2 = Book("sherlock holmes", "Arthur Conan Doyle", 600.00);


  print("Title: ${book1.title}");
  print("Author: ${book1.author}");
  print( "Original Price: ${book1.price} ");
  print( "Discounted Price: ${book1.discountedPrice(10)}\n");


  print("Title: ${book2.title}");
  print("Author: ${book2.author}");
  print( "Original Price: ${book2.price} ");
  print( "Discounted Price: ${book2.discountedPrice(20)}");
}
