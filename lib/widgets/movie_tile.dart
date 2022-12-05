import 'package:flutter/material.dart';
import 'package:where_to_watch/models/movie.dart';
import 'package:where_to_watch/ui/movie_page.dart';

class MovieTile extends StatelessWidget {
  const MovieTile({Key? key, required this.movie}) : super(key: key);
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => MoviePage(
                  movieGenre: movie.movieGenre,
                  movieDirector: movie.movieDirector,
                  movieProductionCountry: movie.movieProductionCountry,
                  movieAddedToNetflixDate: movie.movieAddedToNetflixDate,
                  durationMovie: movie.durationMovie,
                  moviePoster: movie.moviePoster,
                  movieDescription: movie.movieDescription,
                  movieName: movie.movieName,
                  movieYearRelease: movie.movieYearRelease,
                  rating: movie.rating,
                  movieAvailability: movie.movieAvailability,
                )));
          },
          child: SizedBox(
              height: 216, width: 361, child: Image.asset(movie.moviePoster)),
        ),
        Text(
          movie.movieName,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.width * 0.005,
        ),
        const Text('Available in France, Australia... see others'),
      ],
    );
  }
}