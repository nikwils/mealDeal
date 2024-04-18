import 'package:diet/services/authorization/repos/authentication_repository.dart';
import 'package:diet/services/imgs/imgs_controller_service.dart';
import 'package:flutter/material.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  bool _passwordVisible = false;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();

  String? validateEmail(String? value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = RegExp(pattern);
    if (value == null || !regex.hasMatch(value)) {
      return 'Введите корректный email';
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Password is required';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(56, 112, 94, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(56, 112, 94, 1),
        title: const Text(
          'Вход',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (value) => validateEmail(value),
                        controller: controllerEmail,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          border: InputBorder.none,
                          hintText: 'Электронная почта',
                          hintStyle: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      const Divider(
                        height: 1,
                        indent: 20,
                      ),
                      TextFormField(
                        obscureText: !_passwordVisible,
                        validator: (value) => validatePassword(value),
                        controller: controllerPassword,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            icon: Icon(
                              _passwordVisible ? Icons.visibility : Icons.visibility_off,
                              color: Colors.grey,
                              size: 20,
                            ),
                            onPressed: () {
                              setState(() {
                                _passwordVisible = !_passwordVisible;
                              });
                            },
                          ),
                          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          border: InputBorder.none,
                          hintText: 'Пароль',
                          hintStyle: const TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(top: 15),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(),
                    onPressed: () async {
                      await AuthenticationRepository.logIn(
                          username: controllerEmail.text, userPassword: controllerPassword.text);
                    },
                    child: const Text('ВОЙТИ', style: TextStyle(color: Color.fromRGBO(237, 191, 68, 1)))),
              ),
              const SizedBox(height: 30),
              // TextButton(
              //   onPressed: () {},
              //   child: const Wrap(
              //     spacing: 10,
              //     crossAxisAlignment: WrapCrossAlignment.center,
              //     children: [
              //       Text('ВОЙТИ КАК ЭКСПЕРТ', style: TextStyle(color: Color.fromRGBO(237, 191, 68, 1))),
              //     ],
              //   ),
              // ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Image.asset(ImgsControllerService.chefImg.url(format: 'png')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// listener: (BuildContext context, LoginState state) {
//           final myRoute = AutoRouter.of(context);

//           switch (state) {
//             case LoginSuccess():
//               myRoute.push(UserProfileRoute());
//             case LoginLoading():
//               break;
//             case LoginFailure():
//               break;
//           }
//         },
