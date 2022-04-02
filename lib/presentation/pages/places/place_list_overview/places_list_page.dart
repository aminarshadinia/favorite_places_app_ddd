import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_app/application/auth/auth_bloc.dart';
import 'package:sample_app/application/places/place_actor/place_actor_bloc.dart';
import 'package:sample_app/application/places/place_watcher/place_watcher_bloc.dart';
import 'package:sample_app/injectable.dart';
import 'package:sample_app/presentation/pages/places/add_place_overview/place_form_page.dart';
import 'package:sample_app/presentation/pages/places/place_list_overview/widgets/place_list_overview_body.dart';
import 'package:sample_app/presentation/pages/sign_in/sign_in_page.dart';

class PlacesListPage extends StatelessWidget {
  static const routeName = '/placesList';
  const PlacesListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // using getIt isgoin to make sure that all of dependencies are properly injected into the note watcher bloc
        BlocProvider<PlaceWatcherBloc>(
          create: (context) => getIt<PlaceWatcherBloc>()
            ..add(
              const PlaceWatcherEvent.watchAllStarted(),
              // we use ..add() cuz by default when the place_list_page is first displayed we are hoin to watch all places
            ),
        ),
        BlocProvider<PlaceActorBloc>(
          create: (context) => getIt<PlaceActorBloc>(),
        ),
        
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              state.maybeMap(
                  unauthenticated: (_) => Navigator.of(context)
                      .pushReplacementNamed(SignInPage.routeName),
                  orElse: () {});
            },
          ),
          BlocListener<PlaceActorBloc, PlaceActorState>(
            listener: (context, state) {
              state.maybeMap(
                  deleteFailure: (state) {
                    FlushbarHelper.createError(
                      duration: const Duration(seconds: 5),
                      message: state.placeFailure.map(
                        unexpected: (_) =>
                            'Unexpected error happened while deleting... please contact support.',
                        insufficientPermissions: (_) =>
                            'Insufficient permission...',
                        unableToUpdate: (_) => 'This error will never happen while deleting...',
                      ),
                    ).show(context);
                  },
                  orElse: () {});
            },
          ),
        ],
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Favorite Places To visit '),
            leading: IconButton(
              onPressed: () {
                context.read<AuthBloc>().add(const AuthEvent.signedOut());
              },
              icon: const Icon(Icons.exit_to_app),
            ),
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(PlaceFormPage.routeName);
                },
                icon: const Icon(Icons.add),
              ),
            ],
          ),
          body: const PlaceCardWidget(),
        ),
      ),
    );
  }
}
