class Book{

  final String ImageUrl;
  final String details;
  final String title;
  final String genre;
  final String ratings;

  Book({
    required this.ImageUrl,
    required this.details,
    required this.title,
    required this.genre,
    required this.ratings,
  });
}

List<Book> books = [
  Book(
      ImageUrl: 'https://m.media-amazon.com/images/M/MV5BNmQ0ODBhMjUtNDRhOC00MGQzLTk5MTAtZDliODg5NmU5MjZhXkEyXkFqcGdeQXVyNDUyOTg3Njg@._V1_FMjpg_UX1000_.jpg',
      details: 'Harry Potter is a series of seven fantasy novels written by British author J. K. Rowling. The novels chronicle the lives of a young wizard, Harry Potter, and his friends Hermione Granger and Ron Weasley, all of whom are students at Hogwarts School of Witchcraft and Wizardry. The main story arc concerns Harrys conflict with Lord Voldemort, a dark wizard who intends to become immortal, overthrow the wizard governing body known as the Ministry of Magic and subjugate all wizards and Muggles (non-magical people).',
      title: 'Harry Potter',
      genre: 'Fantasy',
      ratings: '⭐⭐⭐⭐⭐'
  ),
  Book(
      ImageUrl: 'https://upload.wikimedia.org/wikipedia/en/d/d3/Zero_to_One.jpg',
      details: 'Zero to One: Notes on Startups, or How to Build the Future is a 2014 book by the American entrepreneur and investor Peter Thiel co-written with Blake Masters. It is a condensed and updated version of a highly popular set of online notes taken by Masters for the CS183 class on startups, as taught by Thiel at Stanford University in Spring 2012.',
      title: 'Zero to One',
      genre: 'Business, Politics & Government',
      ratings: '⭐⭐⭐⭐⭐'
  ),
  Book(
      ImageUrl: 'https://upload.wikimedia.org/wikipedia/en/3/33/How-to-win-friends-and-influence-people.jpg',
      details:'How to Win Friends and Influence People is a 1936 self-help book written by Dale Carnegie. Over 30 million copies have been sold worldwide, making it one of the best-selling books of all time.',
      title: 'How to Win Friends and Influence People',
      genre: '	Self-help',
      ratings: '⭐⭐⭐⭐⭐'
  ),


];