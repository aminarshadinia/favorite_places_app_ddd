import 'dart:ui';

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sample_app/application/auth/sign_in_form/sign_in_form_bloc.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

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
              (_) {},
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
                        '🎃',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 130,
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
                      const SizedBox(height: 20),
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Iconsax.key,
                            size: 18,
                          ),
                          labelText: 'Confirm Password',
                          hintText: 'ReEnter Password',
                        ),
                        autocorrect: false,
                        obscureText: true,
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
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
                          context.read<SignInFormBloc>().add(
                              const SignInFormEvent
                                  .signInWithEmailAndPasswordPressed());
                        },
                        style: elevatedStyle,
                        child: const Text('SignIn'),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Don\'t have an account?',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.grey.shade400,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              context.read<SignInFormBloc>().add(
                                  const SignInFormEvent
                                      .registerWithEmailAndPasswordPressed());
                            },
                            child: const Text(
                              'Register',
                              style: textBtnStyle,
                            ),
                          ),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {
                          context.read<SignInFormBloc>().add(
                              const SignInFormEvent.signInWithGooglePressed());
                        },
                        style: elevatedStyle,
                        child: const Text('SignIn with GOOGLE'),
                      ),
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
