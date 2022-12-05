import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:where_to_watch/models/movie.dart';
import 'package:where_to_watch/search_field.dart';
import 'package:where_to_watch/ui/all_page.dart';
import 'package:where_to_watch/ui/amazon_page.dart';
import 'package:where_to_watch/ui/login_page.dart';
import 'package:where_to_watch/ui/netflix_page.dart';
import 'package:where_to_watch/utils/image_handler.dart';
import 'package:where_to_watch/widgets/all_button.dart';
import 'package:where_to_watch/widgets/movie_button.dart';
import 'package:where_to_watch/widgets/movie_tile.dart';
import 'package:where_to_watch/widgets/tv_show_button.dart';

class DisneyPage extends StatefulWidget {
  DisneyPage({Key? key}) : super(key: key);
  final ImageHandler imageHandler = ImageHandler();


  @override
  State<DisneyPage> createState() => _DisneyPageState();
}

class _DisneyPageState extends State<DisneyPage> {
  String? dropdownvalue = 'Choose Platform';
  String? dropdownCountryValue = 'USA';
  String? dropdownGenre = 'Humour';

  var items = [
    'Choose Platform',
    'Netflix',
    'Amazon',
    'DisneyPlus',
  ];
  var itemsCountry = [
    'USA',
    'France',
    'Canada',
    'Mexico',
  ];
  var itemsGenre = [
    'Humour',
    'Drama',
    'Thriller',
    'Young',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                child: Column(
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
                    children: const [
                      AllButton(),
                      MovieButton(),
                      TvShowButton()
                    ],
                  ),
                ),
              ),
              Center(
                child: SizedBox(
                  height: 90, //MediaQuery.of(context).size.height * 0.1,
                  width: 1374,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        DropdownButton(
                          value: dropdownvalue,
                          icon: Icon(Icons.keyboard_arrow_down),
                          items: items.map((items) {
                            return DropdownMenuItem(value: items, child: Text(items, style: const TextStyle(
                                fontSize: 20)));
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue;
                              switch (dropdownvalue) {
                                case 'Netflix':
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => NetflixPage()));
                                  break;
                                case 'Amazon':
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => AmazonPage()));
                                  break;
                                case 'Choose Platform':
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => AllPage()));
                                  break;
                                default:
                                  return;
                              }
                            });
                          },
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.1,
                        ),
                        DropdownButton(
                          value: dropdownCountryValue,
                          icon: Icon(Icons.keyboard_arrow_down),
                          items: itemsCountry.map((items) {
                            return DropdownMenuItem(value: items, child: Text(items, style: const TextStyle(
                                fontSize: 20)));
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownCountryValue = newValue;
                            });
                          },
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.1,
                        ),
                        DropdownButton(
                          value: dropdownGenre,
                          icon: Icon(Icons.keyboard_arrow_down),
                          items: itemsGenre.map((items) {
                            return DropdownMenuItem(value: items, child: Text(items, style: const TextStyle(
                                fontSize: 20)));
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownGenre = newValue;
                            });
                          },
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.2,
                        ),
                        Expanded(
                          child: Container(
                            height: 55,
                            width: 200,
                            padding: const EdgeInsets.all(16.0),
                            color: const Color.fromRGBO(
                                185, 237, 240, 1), // B9EDF0 185, 237, 240
                            margin: const EdgeInsets.all(10),
                            child: const Center(
                              child: Text(
                                "Filter",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Most popular'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                  MovieTile(
                    movie: desperateHousewives,
                  ),
                  MovieTile(
                    movie: simpsons,
                  ),
                  MovieTile(
                    movie: avatar,
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                  MovieTile(
                    movie: hercules,
                  ),
                ]),
              ),
            ],
          ),
        ));
  }
}




