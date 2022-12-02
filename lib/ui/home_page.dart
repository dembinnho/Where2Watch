import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:where_to_watch/search_field.dart';
import 'package:where_to_watch/ui/login_page.dart';
import 'package:where_to_watch/utils/image_handler.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);
  final ImageHandler imageHandler = ImageHandler();

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LoginPage()));
                                }, child: const Text('Log in', style: TextStyle(decoration: TextDecoration.underline),)),
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
                          style: TextStyle(color: Colors.black, fontSize: 26, decoration: TextDecoration.underline,),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.01,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'My List ',
                          style: TextStyle(color: Colors.black, fontSize: 26, decoration: TextDecoration.underline),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.01,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Soon',
                          style: TextStyle(color: Colors.black, fontSize: 26, decoration: TextDecoration.underline),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.01,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Leaving',
                          style: TextStyle(color: Colors.black, fontSize: 26, decoration: TextDecoration.underline),
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
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.1,
                    padding: const EdgeInsets.all(16.0),
                    margin: const EdgeInsets.all(10),
                    color: const Color.fromRGBO(185, 237, 240, 1),
                    child: const Center(
                      child: Text(
                        "All",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.1,
                    padding: const EdgeInsets.all(16.0),
                    color: const Color.fromRGBO(185, 237, 240, 1), // B9EDF0 185, 237, 240
                    margin: const EdgeInsets.all(10),
                    child: const Center(
                      child: Text(
                        "Movie",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.1,
                    padding: const EdgeInsets.all(16.0),
                    color: const Color.fromRGBO(185, 237, 240, 1), // B9EDF0 185, 237, 240
                    margin: const EdgeInsets.all(10),
                    child: const Center(
                      child: Text(
                        "TV Show",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  )
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
                    const Text(
                      'Choose platform ',
                      style: TextStyle(color: Colors.black, decoration: TextDecoration.underline, fontSize: 20),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.1,
                    ),
                    const Text('Choose country', style: TextStyle(decoration:TextDecoration.underline, fontSize: 20),),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.1,
                    ),
                    const Text('Choose genre', style: TextStyle(decoration:TextDecoration.underline, fontSize: 20),),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.2,
                    ),
                    Container(
                      height: 55,
                      width: 230,
                      padding: const EdgeInsets.all(16.0),
                      color: const Color.fromRGBO(185, 237, 240, 1), // B9EDF0 185, 237, 240
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(
                      height: 216,
                      width: 361,
                      child: Image.asset('someone-great-poster.jpg')),
                  const Text('Someone Great', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.005,
                  ),
                  const Text('Available in France, Australia... see others'),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                      height: 216,
                      width: 361,
                      child: Image.asset('simpsons.jpg')),
                  const Text('The Simpson',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.005,
                  ),
                  const Text('Available in France, Australia... see others'),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                      height: 216,
                      width: 361,
                      child: Image.asset('business_proposal.jpg')),
                  const Text('Business Proposal', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.005,
                  ),
                  const Text('Only available in Japan  see others'),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
