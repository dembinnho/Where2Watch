import 'package:flutter/material.dart';

class ForgottenPassword extends StatelessWidget {
  ForgottenPassword({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailTextController = TextEditingController();
  final FocusNode emailFocus = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: SafeArea(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Logo',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Text(
                    "Nom de l'app",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  const Text(
                    'Mot de passe oublié ? No problemo !!',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        EmailFormField(
                            emailTextController: emailTextController,
                            focusEmail: emailFocus),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 0, backgroundColor: const Color(0xFF1F2938),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              maximumSize: const Size(double.infinity, 58),
                              minimumSize: const Size(double.infinity, 58),
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Mail de réinitialisation de mot de passe',
                              style: TextStyle(color: Colors.white, fontSize: 16),
                            )),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 0, backgroundColor: const Color(0xFF1F2938),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              maximumSize: const Size(double.infinity, 58),
                              minimumSize: const Size(double.infinity, 58),
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text(
                              "Retour à l'accueil",
                              style: TextStyle(color: Colors.white, fontSize: 16),
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
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
    return TextFormField(
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
        prefixIcon:
        Icon(Icons.mail, color: Theme.of(context).colorScheme.secondary),
        hintText: "e-mail",
        hintStyle: const TextStyle(color: Colors.grey),
      ),
      controller: _emailTextController,
      focusNode: _focusEmail,
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
    return TextFormField(
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
        prefixIcon:
        Icon(Icons.key, color: Theme.of(context).colorScheme.secondary),
        hintText: 'mot de passe',
        hintStyle: const TextStyle(color: Colors.grey),
      ),
      obscureText: true,
      controller: _passwordTextController,
      focusNode: _focusPassword,

    );
  }
}
