import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_app/injectable.dart';

import 'package:sample_app/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:sample_app/presentation/pages/sign_in/widgets/sign_in_form.dart';

class SignInPage extends StatelessWidget {
  static const routeName = '/signinPage';
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      body: BlocProvider(
        create: (context) => getIt<SignInFormBloc>(),
        child: const SignInForm(),
      ),
    );
  }
}
