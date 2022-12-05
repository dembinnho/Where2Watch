import 'package:flutter/material.dart';
import 'package:where_to_watch/ui/all_movie_page.dart';
import 'package:where_to_watch/ui/movie_page.dart';

class MovieButton extends StatelessWidget {
  const MovieButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => AllMoviePage()));
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.1,
        width: MediaQuery.of(context).size.width * 0.1,
        padding: const EdgeInsets.all(16.0),
        color: const Color.fromRGBO(
            185, 237, 240, 1), // B9EDF0 185, 237, 240
        margin: const EdgeInsets.all(10),
        child: const Center(
          child: Text(
            "Movie",
            style: TextStyle(fontSize: 14),
          ),
        ),
      ),
    );
  }
}
