import 'package:flutter/material.dart';
import 'package:gadgetsnepal/widgets/login.dart';
import 'package:form_field_validator/form_field_validator.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({Key? key}) : super(key: key);

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  var _obscuretext = true;
  final passwordValidator = MultiValidator([
    RequiredValidator(errorText: 'password is required'),
    MinLengthValidator(8, errorText: 'password must be at least 8 digits long'),
    PatternValidator(r'(?=.*?[#?!@$%^&*-])',
        errorText: 'passwords must have at least one special character')
  ]);
  late String password;
  void validate() {
    if (_formkey.currentState!.validate()) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginPage(),
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
          child: Container(
            padding: const EdgeInsets.all(10),
            height: 500,
            width: 400,
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              child: Container(
                padding: const EdgeInsets.fromLTRB(10, 30, 10, 0.0),
                child: SingleChildScrollView(
                  child: Form(
                    key: _formkey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Create new password',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30),
                        ),
                        const Divider(
                          height: 30,
                          thickness: 2,
                          color: Colors.black,
                        ),
                        const Text(
                          'Your new password must be different from previous used password',
                          style: TextStyle(fontSize: 18),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        TextFormField(
                          validator: passwordValidator,
                          autocorrect: false,
                          enableSuggestions: false,
                          obscureText: _obscuretext,
                          onChanged: (val) => password = val,
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
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          validator: (val) => MatchValidator(
                                  errorText: 'passwords do not match')
                              .validateMatch(val!, password),
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
                          height: 30,
                        ),
                        Center(
                            child: ElevatedButton(
                                onPressed: validate,
                                child: const Text('Reset Password')))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
