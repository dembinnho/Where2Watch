import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:where_to_watch/search_field.dart';
import 'package:where_to_watch/ui/login_page.dart';
import 'package:where_to_watch/utils/image_handler.dart';
import 'package:where_to_watch/widgets/all_button.dart';
import 'package:where_to_watch/widgets/movie_button.dart';
import 'package:where_to_watch/widgets/tv_show_button.dart';

class MoviePage extends StatefulWidget {
  MoviePage(
      {Key? key,
      required this.moviePoster,
      required this.movieName,
      required this.movieDescription,
      required this.movieYearRelease,
      required this.durationMovie,
      required this.rating,
      required this.movieGenre,
      required this.movieDirector,
      required this.movieProductionCountry,
      required this.movieAddedToNetflixDate,
      required this.movieAvailability})
      : super(key: key);
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
  final ImageHandler imageHandler = ImageHandler();

  @override
  State<MoviePage> createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Where2Watch ',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 32),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 200.0),
                    child: SearchField(),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.2,
                  ),
                  SvgPicture.asset(
                    'question_mark.svg',
                    width: 45,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Sign up',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 10),
                        ),
                        Row(
                          children: [
                            const Text(
                              'Already have an account?',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10),
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => const LoginPage()));
                                },
                                child: const Text(
                                  'Log in',
                                  style: TextStyle(
                                      decoration: TextDecoration.underline),
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Search your movie, ',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 32),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'wherever your are ! ',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 32),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.1,
                  ),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Popular',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 26,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.01,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'My List ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 26,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.01,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Soon',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 26,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.01,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Leaving',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 26,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.03,
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.95,
              height: MediaQuery.of(context).size.height * 0.1,
              color: const Color.fromRGBO(101, 190, 195, 1), // 101, 190, 195
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  AllButton(),
                  MovieButton(),
                  TvShowButton(),
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Expanded(
            child: Row(
              children: [
                Column(
                  children: [
                    SizedBox(
                        height: 300,
                        width: 665,
                        child: Image.asset(widget.moviePoster)),
                    Text(
                      widget.movieName,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width * 0.005,
                    ),
                  ],
                ),
                SizedBox(
                  height: 300,
                  width: 450,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(widget.movieYearRelease),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.005,
                          ),
                          Text(widget.durationMovie),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.005,
                          ),
                          Text(widget.rating),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Text(widget.movieDescription),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Row(
                        children: [
                          const Text(
                            'Genres: ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(widget.movieGenre)
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Row(
                        children: [
                          const Text(
                            'Director: ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(widget.movieDirector)
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Row(
                        children: [
                          const Text(
                            'Production Country: ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(widget.movieProductionCountry)
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Row(
                        children: [
                          const Text(
                            'Added to Netflix: ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(widget.movieAddedToNetflixDate)
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Row(
                        children: [
                          const Text(
                            'Availability: ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(widget.movieAvailability)
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
