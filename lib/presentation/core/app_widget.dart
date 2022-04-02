import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_app/application/auth/auth_bloc.dart';
import 'package:sample_app/injectable.dart';
import 'package:sample_app/presentation/pages/places/add_place_overview/place_form_page.dart';
import 'package:sample_app/presentation/pages/places/place_list_overview/places_list_page.dart';
import 'package:sample_app/presentation/pages/sign_in/sign_in_page.dart';
import 'package:sample_app/presentation/pages/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
              // we tell bloc to do sth right from the get go
        ),
      ],
      child: MaterialApp(
        title: 'Sample App',
        initialRoute: '/',
        routes: {
          SplashPage.routeName: (context) => const SplashPage(),
          SignInPage.routeName: (context) => const SignInPage(),
          PlacesListPage.routeName: (context) => const PlacesListPage(),
          PlaceFormPage.routeName: (context) => const PlaceFormPage(placeFormData: null,),
        },
        theme: ThemeData.dark().copyWith(
          primaryColor: Colors.blue,
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.primary,
                width: 2.5,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
      ),
    );
  }
}
