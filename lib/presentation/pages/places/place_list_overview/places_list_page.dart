import 'package:flutter/material.dart';

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_app/injectable.dart';

import 'package:sample_app/application/auth/auth_bloc.dart';
import 'package:sample_app/application/places/place_actor/place_actor_bloc.dart';
import 'package:sample_app/presentation/pages/places/add_place_overview/place_form_page.dart';
import 'package:sample_app/presentation/pages/places/place_list_overview/widgets/app_drawer.dart';
import 'package:sample_app/presentation/pages/places/place_list_overview/widgets/place_list_overview_body.dart';
import 'package:sample_app/presentation/pages/sign_in/sign_in_page.dart';

class PlacesListPage extends StatelessWidget {
  static const routeName = '/placesList';
  const PlacesListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PlaceActorBloc>(),
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
                        unableToUpdate: (_) =>
                            'This error will never happen while deleting...',
                      ),
                    ).show(context);
                  },
                  deleteSuccess: (state) {
                    FlushbarHelper.createError(
                            duration: const Duration(seconds: 5),
                            message: 'Item successfully deleted.')
                        .show(context);
                  },
                  orElse: () {});
            },
          ),
        ],
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Favorite Places To visit '),
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(PlaceFormPage.routeName);
                },
                icon: const Icon(Icons.add),
              ),
            ],
          ),
          drawer: const AppDrawer(),
          body: const PlaceCardWidget(),
        ),
      ),
    );
  }
}
