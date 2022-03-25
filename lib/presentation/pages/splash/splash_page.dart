import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_app/application/auth/auth_bloc.dart';
import 'package:sample_app/presentation/pages/places/places_list_page.dart';
import 'package:sample_app/presentation/pages/sign_in/sign_in_page.dart';

class SplashPage extends StatelessWidget {
  static const routeName = '/';
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /*BlocListener is usefull for doing things which basically cannoy happen during BUILD
    so sth like Navigation cant happen during build and thats why we use bloc listener
     which Runs After the build has finished */
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          //if state is initial we dont want to do anything so we ignore it with this empty function
          initial: (_) {},
          // if state is authenticated : code below
          authenticated: (_) {
            Navigator.of(context).pushNamed(PlacesListPage.routeName);
          },
          unauthenticated: (_) {
            Navigator.of(context).pushNamed(SignInPage.routeName);
          },
        );
      },
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
