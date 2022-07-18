import 'package:flutter/material.dart';
import 'package:gadgetsnepal/widgets/login.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _obscuretext = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple,
        appBar: AppBar(
          title: const Text('Gadgets Nepal'),
          centerTitle: true,
        ),
        body: Center(
          child: SizedBox(
            height: 500.0,
            width: 400.0,
            child: Card(
              elevation: 10.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              margin: const EdgeInsets.all(20.0),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Center(
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30.0,
                                letterSpacing: 1.0),
                          ),
                        ),
                        const Divider(
                          height: 10.0,
                          thickness: 2,
                          color: Color.fromRGBO(0, 0, 0, 0.63),
                        ),
                        TextFormField(
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
                          keyboardType: TextInputType.emailAddress,
                          autocorrect: false,
                          decoration: const InputDecoration(
                            labelText: 'Email',
                            labelStyle: TextStyle(letterSpacing: 1.0),
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.number,
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
                              labelStyle: const TextStyle(letterSpacing: 1.0)),
                        ),
                        TextFormField(
                          keyboardType: TextInputType.number,
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
                              labelText: 'Confirm password',
                              labelStyle: const TextStyle(letterSpacing: 1.0)),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Center(
                            child: SizedBox(
                          width: 150.0,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const LoginPage(),
                                  ));
                            },
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0))),
                            child: const Text(
                              "Sign Up",
                              style:
                                  TextStyle(letterSpacing: 1.0, fontSize: 20),
                            ),
                          ),
                        )),
                        const SizedBox(
                          height: 10.0,
                        ),
                      ]),
                ),
              ),
            ),
          ),
        ));
  }
}
