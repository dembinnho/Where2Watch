import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();

  const RegisterPage({Key? key}) : super(key: key);
}

class _RegisterPageState extends State<RegisterPage> {
  final _registerFormKey = GlobalKey<FormState>();

  final _nameTextController = TextEditingController();
  final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  final _passwordConfirmationPasswordController = TextEditingController();

  final _focusName = FocusNode();
  final _focusEmail = FocusNode();
  final _focusCompany = FocusNode();
  final _focusPassword = FocusNode();
  final _focusConfirmationPassword = FocusNode();

  final bool _isProcessing = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _focusName.unfocus();
        _focusEmail.unfocus();
        _focusCompany.unfocus();
        _focusPassword.unfocus();
        _focusConfirmationPassword.unfocus();
      },
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
          child: SafeArea(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
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
                    'Se connecter',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Form(
                    key: _registerFormKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        FormWidget(
                          nameTextController: _nameTextController,
                          focusName: _focusName,
                          hintText: "Entrer votre nom",
                          prefixIcon: Icon(Icons.person,
                              color: Theme.of(context).colorScheme.secondary),
                          obscureText: false,
                        ),
                        const SizedBox(height: 16.0),
                        FormWidget(
                          nameTextController: _emailTextController,
                          focusName: _focusEmail,
                          hintText: 'Entrer votre mail',
                          prefixIcon: Icon(Icons.email,
                              color: Theme.of(context).colorScheme.secondary),
                          obscureText: false,
                        ),
                        const SizedBox(height: 16.0),
                        FormWidget(
                          nameTextController: _passwordTextController,
                          focusName: _focusPassword,
                          hintText: 'Entrez votre mot de passe',
                          prefixIcon: Icon(Icons.lock,
                              color: Theme.of(context).colorScheme.secondary),
                          obscureText: true,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        FormWidget(
                          nameTextController:
                          _passwordConfirmationPasswordController,
                          focusName: _focusConfirmationPassword,
                          hintText: 'Confirmer le mot de passe',
                          prefixIcon: Icon(Icons.key_rounded,
                              color: Theme.of(context).colorScheme.secondary),
                          obscureText: true,
                        ),
                        const SizedBox(height: 32.0),
                        _isProcessing
                            ? const CircularProgressIndicator()
                            : Column(
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(10.0)),
                                primary: const Color(0xFF1F2938),
                                maximumSize:
                                const Size(double.infinity, 58),
                                minimumSize:
                                const Size(double.infinity, 58),
                              ),
                              onPressed: () {},
                              child: const Text(
                                'Se connecter',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ),
                            const SizedBox(height: 16.0),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(10.0)),
                                primary: const Color(0xFF1F2938),
                                maximumSize:
                                const Size(double.infinity, 58),
                                minimumSize:
                                const Size(double.infinity, 58),
                              ),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text(
                                'Annuler',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class FormWidget extends StatelessWidget {
  const FormWidget({
    Key? key,
    required TextEditingController nameTextController,
    required FocusNode focusName,
    // required String? Function(String?)? validator,
    required String hintText,
    required Widget? prefixIcon,
    required bool obscureText,
  })  : _nameTextController = nameTextController,
        _focusName = focusName,
        _hintText = hintText,
        _prefixIcon = prefixIcon,
        _obscureText = obscureText,
        super(key: key);

  final TextEditingController _nameTextController;
  final FocusNode _focusName;
  final String _hintText;
  final Widget? _prefixIcon;
  final bool _obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        cursorColor: Theme.of(context).colorScheme.secondary,
        obscureText: _obscureText,
        controller: _nameTextController,
        focusNode: _focusName,
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
          prefixIcon: _prefixIcon,
          hintText: _hintText,
          hintStyle: const TextStyle(color: Colors.grey),
        ));
  }
}
