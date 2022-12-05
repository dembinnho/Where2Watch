class Movie {
  Movie(
      {required this.moviePoster,
      required this.movieName,
      required this.movieDescription,
      required this.movieYearRelease,
      required this.durationMovie,
      required this.rating,
      required this.movieGenre,
      required this.movieDirector,
      required this.movieProductionCountry,
      required this.movieAddedToNetflixDate,
      required this.movieAvailability});
  final String moviePoster;
  final String movieYearRelease;
  final String durationMovie;
  final String movieName;
  final String rating;
  final String movieDescription;
  final String movieGenre;
  final String movieDirector;
  final String movieProductionCountry;
  final String movieAddedToNetflixDate;
  final String movieAvailability;
}

//series netflix

Movie someoneGreat = Movie(
  movieGenre: 'Comedies, Romantic Movies',
  movieDirector: 'Jennifer Kaytin Robinson',
  movieProductionCountry: 'Production Country: United States',
  movieAddedToNetflixDate: 'Added to Netflix: April 19, 2019',
  durationMovie: '92 MIN',
  moviePoster: 'someone-great-poster.jpg',
  movieDescription:
      'On the heels of a blindsiding breakup, music journalist Jenny braces for a new beginning – and one last adventure with her closest friends.',
  movieName: 'Someone Great',
  movieYearRelease: '2019',
  rating: '8.1',
  movieAvailability:
      'Availability: France, Australia, Allemagne, Italie, Portugal',
);

Movie wednesday = Movie(
    movieName: 'Wednesday',
    movieDirector: 'Tim Burton',
    movieProductionCountry: 'Production Country: United States',
    rating: '8.5',
    durationMovie: '45Min',
    movieAddedToNetflixDate: 'Available on Netflix since 2022',
    movieAvailability: 'USA, France',
    movieDescription:
        "Wednesday's attempts to master her emerging psychic ability, thwart a monstrous killing spree that has terrorized the local town, and solve the supernatural mystery that embroiled her parents 25 years ago - all while navigating her new and very tangled relationships at Nevermore.",
    movieGenre: 'coming-of-age supernatural comedy horror',
    moviePoster:
        'wednesday.webp',
    movieYearRelease: '2022');

Movie theCrown = Movie(
    movieName: 'The Crown',
    movieDirector: 'Stephen Daldry',
    movieProductionCountry: 'Production Country: United States and England',
    rating: '8.7',
    durationMovie: '60Min',
    movieAddedToNetflixDate: 'Available on Netflix since 2016',
    movieAvailability: 'USA, France',
    movieDescription:
        "This show focuses on Queen Elizabeth II as a young newlywed faced with leading the world's most famous monarchy, while forging a relationship with legendary Prime Minister Sir Winston Churchill. ",
    movieGenre: 'historical drama television',
    moviePoster:
        'the_crown.jpeg',
    movieYearRelease: '2016');

Movie businessProposal = Movie(
    moviePoster: 'business_proposal.jpg',
    movieName: 'Business proposal',
    movieDescription:
        'It tells the story of Shin Ha-ri, an employee who accepts to go on a blind date in place of her friend, but finds out that her date is actually her boss',
    movieYearRelease: '2022',
    durationMovie: '61mn per episode',
    rating: '8.1',
    movieGenre: 'Romantic Comedy',
    movieDirector: 'Park Seon-ho',
    movieProductionCountry: 'Production Country: 	South Korea',
    movieAddedToNetflixDate: 'Available on Disney',
    movieAvailability: 'Only available in Japan see others');

//series disney plus
Movie desperateHousewives = Movie(
    movieName: 'Desperate Housewives',
    movieDirector: 'Larry Shaw and David Grossman',
    movieProductionCountry: 'United States',
    rating: '7.6',
    durationMovie: '45mn',
    movieAddedToNetflixDate: 'Available on Disney Plus',
    movieAvailability: 'USA, France',
    movieDescription:
        "Desperate Housewives follows the lives of a group of women as seen through the eyes of their friend and neighbor who took her life by suicide in the pilot episode.",
    movieGenre: 'comedy-drama soap opera',
    moviePoster:
        'desperates.jpeg',
    movieYearRelease: '2016');

Movie simpsons = Movie(
  movieGenre: 'Humour',
  movieDirector: 'Matt Groening',
  movieProductionCountry: 'Production Country: United States',
  movieAddedToNetflixDate: 'Available on Disney Plus',
  durationMovie: '20mn per epsisode',
  moviePoster: 'simpsons.jpg',
  movieDescription:
      'Animated primetime series that follows the exploits of a hapless and semi-dysfunctional nuclear family named the Simpsons, who live in the fictional town of Springfield, whose various inhabitants add to the comedy, angst, satire, and parody of this series. The Simpsons are a dysfunctional family living in Springfield.',
  movieName: 'The Simpsons',
  movieYearRelease: '1989',
  rating: '8.7',
  movieAvailability:
      'Availability: France, Australia, Allemagne, Italie, Portugal',
);

/// series amazon prime

Movie oneTreeHill = Movie(
  movieGenre: 'Teen Drama',
  movieDirector: 'Mark Schwahn',
  movieProductionCountry: 'Production Country: United States',
  movieAddedToNetflixDate: 'Available on Amazon Prime',
  durationMovie: '42mn per epsisode',
  moviePoster:
      'one_tree.jpg',
  movieDescription:
      'Half-brothers Lucas and Nathan Scott trade between kinship and rivalry both on the basketball court and in the hearts of their friends in the small, but not so quiet town of Tree Hill, North Carolina.',
  movieName: 'One Tree Hill',
  movieYearRelease: '2003',
  rating: '7.8',
  movieAvailability:
      'Availability: France, Australia, Allemagne, Italie, Portugal',
);
Movie gossipGirl = Movie(
  movieGenre: 'Teen Drama',
  movieDirector: 'Josh Schwartz',
  movieProductionCountry: 'Production Country: United States',
  movieAddedToNetflixDate: 'Available on Amazon Prime since 2012',
  durationMovie: '42mn per epsisode',
  moviePoster: 'gossip.jpeg',
  movieDescription:
      'Gossip Girl, a ruthless and mysterious blogger reveals secrets about teens in upper east side New York. With roller coaster romances and piles of secrets hiding away for Gossip Girl to find, this show is sure to bring the upper east side and its drama into our lives.',
  movieName: 'Gossip Girl',
  movieYearRelease: '2007',
  rating: '7.8',
  movieAvailability:
      'Availability: France, Australia, Allemagne, Italie, Portugal',
);


// Movies
// Netflix

Movie gladiator = Movie(
    movieName: 'Gladiator',
    movieDirector: 'Ridley Scott',
    movieProductionCountry: 'United States',
    rating: '8.5',
    durationMovie: '155mn',
    movieAddedToNetflixDate: 'Available on Netflix',
    movieAvailability: 'USA, France',
    movieDescription:
    "Maximus is a powerful Roman general, loved by the people and the aging Emperor, Marcus Aurelius. Before his death, the Emperor chooses Maximus to be his heir over his own son, Commodus, and a power struggle leaves Maximus and his family condemned to death. The powerful general is unable to save his family, and his loss of will allows him to get captured and put into the Gladiator games until he dies. The only desire that fuels him now is the chance to rise to the top so that he will be able to look into the eyes of the man who will feel his revenge.",
    movieGenre: 'epic historical drama ',
    moviePoster:
    'gladiator.png',
    movieYearRelease: '2000');

Movie theGreenMile = Movie(
    movieName: 'The Green Mile',
    movieDirector: 'Frank Darabont',
    movieProductionCountry: 'United States',
    rating: '8.6',
    durationMovie: '189mn',
    movieAddedToNetflixDate: 'Available on Netflix',
    movieAvailability: 'USA, France',
    movieDescription:
    "he lives of guards on Death Row are affected by one of their charges: a black man accused of child murder and rape, yet who has a mysterious gift.",
    movieGenre: 'epic historical drama ',
    moviePoster:
    'green_mile.jpg',
    movieYearRelease: '1999');
// Disney plus movies

Movie avatar = Movie(
    movieName: 'Avatar',
    movieDirector: 'James Cameron',
    movieProductionCountry: 'United States',
    rating: '7.8',
    durationMovie: '162mn',
    movieAddedToNetflixDate: 'Available on Disney Plus',
    movieAvailability: 'USA, France',
    movieDescription:
    "A paraplegic Marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home.",
    movieGenre: 'epic science fiction film',
    moviePoster:
    'avatar.jpeg',
    movieYearRelease: '2009');

Movie hercules = Movie(
    movieName: 'Hercules',
    movieDirector: 'John Musker and Ron Clements',
    movieProductionCountry: 'United States',
    rating: '7.3',
    durationMovie: '93mn',
    movieAddedToNetflixDate: 'Available on Disney Plus',
    movieAvailability: 'USA, France',
    movieDescription:
    "The son of Zeus and Hera is stripped of his immortality as an infant and must become a true hero in order to reclaim it.",
    movieGenre: 'animated musical fantasy comedy film',
    moviePoster:
    'hercules.jpeg',
    movieYearRelease: '2009');

// Amazon prime

Movie theDarkKnight =  Movie(
    movieName: 'The Dark Knight',
    movieDirector: 'Christopher Nolan',
    movieProductionCountry: 'United States',
    rating: '9.0',
    durationMovie: '152mn',
    movieAddedToNetflixDate: 'Available on Amazon Prime',
    movieAvailability: 'USA, France',
    movieDescription:
    "When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.",
    movieGenre: 'superhero film',
    moviePoster:
    'tdkr.jpeg',
    movieYearRelease: '2008');

Movie lordOfTheRing =  Movie(
    movieName: 'The Lord of the Rings',
    movieDirector: 'Peter Jackson',
    movieProductionCountry: 'United States',
    rating: '8.8',
    durationMovie: '178mn',
    movieAddedToNetflixDate: 'Available on Amazon Prime',
    movieAvailability: 'USA, France',
    movieDescription:
    "A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron.",
    movieGenre: 'superhero film',
    moviePoster:
    'lord.jpeg',
    movieYearRelease: '2008');
