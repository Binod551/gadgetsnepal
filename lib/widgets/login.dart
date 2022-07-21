import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:gadgetsnepal/widgets/homepage.dart';
import './signup.dart';
import './resetpassword.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  bool _obscuretext = true;
  final usernamevalidator = MultiValidator([
    RequiredValidator(errorText: 'User name is required'),
    MinLengthValidator(6, errorText: 'user name must be at leat 6 digits long')
  ]);
  final passwordValidator = MultiValidator([
    RequiredValidator(errorText: 'password is required'),
    MinLengthValidator(8, errorText: 'password must be at least 8 digits long'),
    PatternValidator(r'(?=.*?[#?!@$%^&*-])',
        errorText: 'passwords must have at least one special character')
  ]);
  void validate() {
    if (formkey.currentState!.validate()) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const HomePage(),
          ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.purple,
          appBar: AppBar(
            title: const Text('Gadgets Nepal'),
            centerTitle: true,
          ),
          body: Center(
            child: SizedBox(
              height: 400.0,
              width: 400.0,
              child: Card(
                elevation: 10.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                margin: const EdgeInsets.all(20.0),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SingleChildScrollView(
                    child: Form(
                      key: formkey,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Center(
                              child: Text(
                                'Login',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30.0,
                                    letterSpacing: 1.0),
                              ),
                            ),
                            const Divider(
                              height: 15.0,
                              thickness: 2,
                              color: Color.fromRGBO(0, 0, 0, 0.63),
                            ),
                            TextFormField(
                              validator: usernamevalidator,
                              keyboardType: TextInputType.name,
                              autocorrect: false,
                              decoration: const InputDecoration(
                                labelText: 'Username',
                                labelStyle: TextStyle(letterSpacing: 1.0),
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            TextFormField(
                              validator: passwordValidator,
                              autocorrect: false,
                              enableSuggestions: false,
                              obscureText: _obscuretext,
                              decoration: InputDecoration(
                                  suffixIcon: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _obscuretext = !_obscuretext;
                                      });
                                    },
                                    child: Icon(_obscuretext
                                        ? Icons.visibility
                                        : Icons.visibility_off),
                                  ),
                                  labelText: 'Password',
                                  labelStyle:
                                      const TextStyle(letterSpacing: 1.0)),
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const ResetPassword(),
                                      ));
                                },
                                child: const Text(
                                  'forgot password ?',
                                  style: TextStyle(letterSpacing: 1.0),
                                )),
                            Center(
                                child: SizedBox(
                              width: 150.0,
                              child: ElevatedButton(
                                onPressed: validate,
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0))),
                                child: const Text(
                                  "Login",
                                  style: TextStyle(
                                      letterSpacing: 1.0, fontSize: 20),
                                ),
                              ),
                            )),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Not a member?',
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.grey,
                                      letterSpacing: 1.0),
                                ),
                                TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const SignUp(),
                                          ));
                                    },
                                    child: const Text(
                                      'SignUp',
                                      style: TextStyle(letterSpacing: 1.0),
                                    )),
                              ],
                            ),
                          ]),
                    ),
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
