import 'dart:ui';

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sample_app/application/auth/auth_bloc.dart';
import 'package:sample_app/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:sample_app/presentation/pages/places/places_list_page.dart';

enum AuthMode { signUp, login }

class SignInForm extends StatefulWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  AuthMode _authMode = AuthMode.login;

  @override
  Widget build(BuildContext context) {
    final ButtonStyle elevatedStyle = ElevatedButton.styleFrom(
        primary: Colors.black, // background
        onPrimary: Colors.white, // forehead
        minimumSize: const Size(0, 45),
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 50,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        textStyle: const TextStyle(
          fontSize: 16,
          color: Colors.white,
        ));
    const TextStyle textBtnStyle = TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
    );

    void _switchAuthMode() {
      if (_authMode == AuthMode.login) {
        setState(() {
          _authMode = AuthMode.signUp;
        });
      } else {
        setState(() {
          _authMode = AuthMode.login;
        });
      }
    }

    final _passwordController = TextEditingController();

    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
         state.authFailureOrSuccessOption.fold(
          () {},
          (either) {
            either.fold(
              (failure) {
                FlushbarHelper.createError(
                  message: failure.map(
                    // Use localized strings here in your apps
                    cancelledByUser: (_) => 'Cancelled',
                    serverError: (_) => 'Server error',
                    emailAlreadyInUse: (_) => 'Email already in use',
                    invalidEmailAndPasswordCombination: (_) =>
                        'Invalid email and password combination',
                  ),
                ).show(context);
              },
              (_) {
                Navigator.of(context).pushNamed(PlacesListPage.routeName);
                // once the use is signes is the state of authentication will change to 'authenticated' 
                context.read<AuthBloc>().add(const AuthEvent.authCheckRequested());
              },
            );
          },
        );
      },
      builder: (context, state) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Form(
                  // line below allow immidiate validatioin of input as soon as a character changes
                  autovalidate: state.showErrorMessages,
                  child: Column(
                    children: [
                      const Text(
                        '🗝',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 40,
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Iconsax.user,
                            size: 18,
                          ),
                          labelText: 'Email',
                        ),
                        onChanged: (value) =>
                            context.read<SignInFormBloc>().add(
                                  SignInFormEvent.emailChanged(value),
                                ),
                        /*below we get state from bloc instead of builder because UI didnot have the change ro rebuild and 
                        update the state so in inputs it is always one character behind */
                        validator: (_) => context
                            .read<SignInFormBloc>()
                            .state
                            .emailAddress
                            .value
                            .fold(
                              (f) => f.maybeMap(
                                // we use maybeMap and orElse cuz we only care about a specific failure in each input
                                invalidEmail: (_) => 'invalid mail',
                                orElse: () => null,
                              ),
                              (_) => null,
                            ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Iconsax.key,
                            size: 18,
                          ),
                          labelText: 'Password',
                          hintText: 'At least 6 characters',
                        ),
                        autocorrect: false,
                        obscureText: true,
                        controller: _passwordController,
                        onChanged: (value) =>
                            context.read<SignInFormBloc>().add(
                                  SignInFormEvent.passwordChanged(value),
                                ),
                        validator: (_) => context
                            .read<SignInFormBloc>()
                            .state
                            .password
                            .value
                            .fold(
                              (f) => f.maybeMap(
                                shortPassword: (_) => 'Short password',
                                orElse: () => null,
                              ),
                              (_) => null,
                            ),
                      ),
                      if (_authMode == AuthMode.signUp)
                        const SizedBox(height: 20),
                      if (_authMode == AuthMode.signUp)
                        TextFormField(
                          enabled: _authMode == AuthMode.signUp,
                          validator: _authMode == AuthMode.signUp
                              ? (value) {
                                  if (value != _passwordController.text) {
                                    return 'Passwords do not match!';
                                  }
                                }
                              : null,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Iconsax.key,
                              size: 18,
                            ),
                            labelText: 'Confirm Password',
                            hintText: 'Re-enter Password',
                          ),
                          autocorrect: false,
                          obscureText: true,
                        ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          if (_authMode == AuthMode.login)
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Forgot Password?',
                                style: textBtnStyle,
                              ),
                            ),
                        ],
                      ),
                      const SizedBox(height: 40),
                      ElevatedButton(
                        onPressed: () {
                          _authMode == AuthMode.login
                              ? context.read<SignInFormBloc>().add(
                                    const SignInFormEvent
                                        .signInWithEmailAndPasswordPressed(),
                                  )
                              : context.read<SignInFormBloc>().add(
                                    const SignInFormEvent
                                        .registerWithEmailAndPasswordPressed(),
                                  );
                                        print('signin / register clicked');

                        },
                        style: elevatedStyle,
                        child: Text(
                            _authMode == AuthMode.login ? "Login" : "SignUp"),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            _authMode == AuthMode.login
                                ? 'Don\'t have an account?'
                                : 'Already have an account?',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.grey.shade400,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextButton(
                            onPressed: _switchAuthMode,
                            child: Text(
                              _authMode == AuthMode.login
                                  ? 'Register'
                                  : 'Login',
                              style: const TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'OR',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.grey.shade400,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10.0),
                      ElevatedButton(
                        onPressed: () {
                          context.read<SignInFormBloc>().add(
                              const SignInFormEvent.signInWithGooglePressed());
                        },
                        style: elevatedStyle,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          const Text(
                            ' Login with google ',
                          ),
                          Image.network(
                            'https://freesvg.org/img/1534129544.png',
                            height: 25,
                          ),
                        ]),
                      ),
                      if(state.isSubmitting) ...[
                        const SizedBox(height: 10,),
                        const LinearProgressIndicator()
                      ]
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
