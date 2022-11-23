import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:where_to_watch/ui/forgotten_password.dart';
import 'package:where_to_watch/ui/menu_page.dart';
import 'package:where_to_watch/ui/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  final _emailTextController = TextEditingController();

  final _passwordTextController = TextEditingController();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();

  final _focusEmail = FocusNode();
  final _focusFirstNameController = FocusNode();
  final _focusLastNameController = FocusNode();

  final _focusPassword = FocusNode();

  final bool _isProcessing = false;
  bool valueFirst = false;

  void clearForm() {
    setState(() {
      _emailTextController.clear();
      _passwordTextController.clear();
    });
  }

  @override
  void dispose() {
    _emailTextController.dispose();
    _passwordTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          const Text(
                            'Where2Watch ',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 32),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Column(
                              children: [

                                const Text(
                                  'Search your movie, ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 32),
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height * 0.01,
                                ),
                                const Text(
                                  'wherever your are ! ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 32),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.3,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Row(
                          children: [
                            const Text(
                              "Already have an account?",
                              style: TextStyle(color: Colors.black, fontSize: 18),
                            ),

                            Column(
                              children: [
                                SizedBox(
                                  height: MediaQuery.of(context).size.height * 0.001,
                                ),
                                TextButton(
                                    onPressed: () {},
                                    child: TextButton(
                                      child: const Text('Log in', style: TextStyle(decoration: TextDecoration.underline, color: Colors.blueAccent),),
                                      onPressed: () {},
                                    )),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(35),
                        child: Row(
                          children: [
                            SvgPicture.asset('facebook_logo.svg', width: 45,),
                            SizedBox(width: MediaQuery.of(context).size.width * 0.01,),
                            SvgPicture.asset('insta_logo.svg', width: 45,),
                            SizedBox(width: MediaQuery.of(context).size.width * 0.01,),
                            SvgPicture.asset('twitter_logo.svg', width: 45,),
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            maximumSize:
                            Size(MediaQuery.of(context).size.width * 0.2, 58),
                            minimumSize:
                            Size(MediaQuery.of(context).size.width * 0.2, 58),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const MenuPage()));
                          },
                          child: Row(
                            children: [
                              SvgPicture.asset('google_logo.svg', width: 30,),
                              SizedBox(width: MediaQuery.of(context).size.width * 0.02,),
                              const Text(
                                'Sign up with google',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ],
                          )),
                      Row(
                        children: [
                          Container(
                              width: MediaQuery.of(context).size.width * 0.1,
                              color: Colors.black,
                              height: MediaQuery.of(context).size.height * 0.001),
                          const Text(
                            'or',
                            style: TextStyle(color: Colors.black, fontSize: 22),
                          ),
                          Container(
                              width: MediaQuery.of(context).size.width * 0.1,
                              color: Colors.black,
                              height: MediaQuery.of(context).size.height * 0.001),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Form(
                        key: _formKey,
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: LastNameFormField(
                                      firstNameController: _firstNameController,
                                      focusFirstName: _focusFirstNameController),
                                ),
                                FirstNameFormField(
                                    firstNameController: _lastNameController,
                                    focusFirstName: _focusLastNameController)
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.03,
                            ),
                            EmailFormField(
                                emailTextController: _emailTextController,
                                focusEmail: _focusEmail),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.03,
                            ),
                            PasswordFormField(
                                passwordTextController: _passwordTextController,
                                focusPassword: _focusPassword),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.03,
                            ),
                            const ForgotPassword(),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.03,
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Checkbox(
                                      value: valueFirst,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          valueFirst = !valueFirst;
                                        });
                                      }),
                                  const Padding(
                                    padding: EdgeInsets.only(top: 8.0),
                                    child: Text('I agree to the Terms of Service', style: TextStyle(fontSize: 14),),
                                  )
                                ]),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.03,
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  backgroundColor:  Colors.purpleAccent,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0)),
                                  maximumSize: Size(
                                      MediaQuery.of(context).size.width * 0.2, 58),
                                  minimumSize: Size(
                                      MediaQuery.of(context).size.width * 0.2, 58),
                                ),
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => const MenuPage()));
                                },
                                child: const Text(
                                  'Sign me up !',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                )),
                            SizedBox(width: MediaQuery.of(context).size.width * 0.2,),

                            _isProcessing
                                ? const CircularProgressIndicator()
                                : Container()
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

class SignUp extends StatelessWidget {
  const SignUp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: Color.fromRGBO(214, 97, 255, 0.47),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0)),
          maximumSize: Size(
              MediaQuery.of(context).size.width * 0.2, 58),
          minimumSize: Size(
              MediaQuery.of(context).size.width * 0.2, 58),
        ),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const MenuPage()));
        },
        child: const Text(
          'Sign me up !',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ));
  }
}

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomRight,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFFFFFFF), elevation: 0),
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => ForgottenPassword()));
          },
          child: const Text(
            'Mot de passe oublié',
            style: TextStyle(
                color: Colors.grey, decoration: TextDecoration.underline),
          )),
    );
  }
}

class EmailFormField extends StatelessWidget {
  const EmailFormField({
    Key? key,
    required TextEditingController emailTextController,
    required FocusNode focusEmail,
  })  : _emailTextController = emailTextController,
        _focusEmail = focusEmail,
        super(key: key);

  final TextEditingController _emailTextController;
  final FocusNode _focusEmail;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.2,
      height: 58,
      child: TextFormField(
        cursorColor: Theme.of(context).colorScheme.secondary,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(5.5),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(5.5),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(5.5),
          ),
          hintText: "e-mail",
          hintStyle: const TextStyle(color: Colors.grey),
        ),
        controller: _emailTextController,
        focusNode: _focusEmail,
      ),
    );
  }
}

class FirstNameFormField extends StatelessWidget {
  const FirstNameFormField({
    Key? key,
    required TextEditingController firstNameController,
    required FocusNode focusFirstName,
  })  : _firstNameController = firstNameController,
        _focusFirstName = focusFirstName,
        super(key: key);

  final TextEditingController _firstNameController;
  final FocusNode _focusFirstName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.1,
      height: 58,
      child: TextFormField(
        cursorColor: Theme.of(context).colorScheme.secondary,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(5.5),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(5.5),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(5.5),
          ),
          hintText: "First Name",
          hintStyle: const TextStyle(color: Colors.grey),
        ),
        controller: _firstNameController,
        focusNode: _focusFirstName,
      ),
    );
  }
}

class LastNameFormField extends StatelessWidget {
  const LastNameFormField({
    Key? key,
    required TextEditingController firstNameController,
    required FocusNode focusFirstName,
  })  : _firstNameController = firstNameController,
        _focusFirstName = focusFirstName,
        super(key: key);

  final TextEditingController _firstNameController;
  final FocusNode _focusFirstName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.1,
      height: 58,
      child: TextFormField(
        cursorColor: Theme.of(context).colorScheme.secondary,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(5.5),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(5.5),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(5.5),
          ),
          hintText: "Last Name",
          hintStyle: const TextStyle(color: Colors.grey),
        ),
        controller: _firstNameController,
        focusNode: _focusFirstName,
      ),
    );
  }
}

class PasswordFormField extends StatelessWidget {
  const PasswordFormField({
    Key? key,
    required TextEditingController passwordTextController,
    required FocusNode focusPassword,
  })  : _passwordTextController = passwordTextController,
        _focusPassword = focusPassword,
        super(key: key);

  final TextEditingController _passwordTextController;
  final FocusNode _focusPassword;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.2,
      height: 58,
      child: TextFormField(
        cursorColor: Theme.of(context).colorScheme.secondary,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(5.5),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(5.5),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(5.5),
          ),
          hintText: 'password',
          hintStyle: const TextStyle(color: Colors.grey),
        ),
        obscureText: true,
        controller: _passwordTextController,
        focusNode: _focusPassword,
      ),
    );
  }
}
