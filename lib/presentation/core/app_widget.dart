import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_app/application/auth/auth_bloc.dart';
import 'package:sample_app/injectable.dart';
import 'package:sample_app/presentation/sign_in/sign_in_page.dart';
import 'package:sample_app/presentation/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              // we tell bloc to do sth right fro the get go
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
      ],
      child: MaterialApp(
        title: 'Sample App',
        // home: const SignInPage(),
        initialRoute: '/',
        routes: {
          SplashPage.routeName: (context) => const SplashPage(),
          SignInPage.routeName: (context) => const SignInPage(),
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
