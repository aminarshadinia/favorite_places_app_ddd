import 'package:another_flushbar/flushbar_helper.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_app/application/places/note_form/place_form_bloc.dart';

import 'package:sample_app/domain/place/place.dart';
import 'package:sample_app/injectable.dart';
import 'package:sample_app/presentation/pages/places/add_place_overview/widgets/place_form_fields_widget.dart';

class PlaceFormPage extends StatelessWidget {
  static const routeName = '/add-place';
  final Place? placeFormData;

  const PlaceFormPage({
    Key? key,
    required this.placeFormData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PlaceFormBloc>()
        ..add(
          PlaceFormEvent.initialized(
            optionOf(placeFormData),
          ),
        ),
      child: BlocConsumer<PlaceFormBloc, PlaceFormState>(
        // line below says listen only when prev.saveFail IS DIFFERENT from currentState.savefail...
        listenWhen: (preState, currentState) =>
            preState.saveFailureOrSuccessOption !=
            currentState.saveFailureOrSuccessOption,
        listener: (context, state) {
          state.saveFailureOrSuccessOption.fold(() {}, (either) {
            either.fold((failure) {
              FlushbarHelper.createError(
                message: failure.map(
                  unexpected: (_) => 'Unexpected Error',
                  insufficientPermissions: (_) => 'Insufficient Permissions',
                  unableToUpdate: (_) => 'Place Update was Failed',
                ),
              ).show(context);
            }, (r) {
              // if the is no feailure but instead we get a Unit from the either
              Navigator.of(context).pop();
            });
          });
        },
        // this only rebuild this part of ui when  the prev state is saveing
        buildWhen: (p, c) => p.isSaving != c.isSaving,
        builder: (context, state) {
          return Stack(
            children: [
              const PlaceFormPageScaffold(),
              SavingInProgressOveylay(isSaving: state.isSaving),
            ],
          );
        },
      ),
    );
  }
}

class SavingInProgressOveylay extends StatelessWidget {
  final bool isSaving;

  const SavingInProgressOveylay({Key? key, required this.isSaving})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !isSaving,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        color: isSaving ? Colors.black.withOpacity(0.8) : Colors.transparent,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Visibility(
          visible: isSaving,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircularProgressIndicator(),
              const SizedBox(height: 10),
              Text(
                'Saving',
                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: Colors.white,
                      fontSize: 16,
                    ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PlaceFormPageScaffold extends StatelessWidget {
  const PlaceFormPageScaffold({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: BlocBuilder<PlaceFormBloc, PlaceFormState>(
            buildWhen: (p, c) => p.isEditing != c.isEditing,
            builder: (context, state) =>
                Text(state.isEditing ? 'Edit a note' : 'Create a note'),
          ),
          actions: <Widget>[
            Builder(
              builder: (context) {
                return IconButton(
                  icon: const Icon(Icons.check),
                  onPressed: () {
                    context
                        .read<PlaceFormBloc>()
                        .add(const PlaceFormEvent.saved());
                  },
                );
              },
            ),
          ],
        ),
        body: BlocBuilder<PlaceFormBloc, PlaceFormState>(
          buildWhen: (c, p) => p.showErrorMessages != c.showErrorMessages,
          builder: (context, state) {
            return Form(
                autovalidate: state.showErrorMessages,
                child: SingleChildScrollView(
                  child: Column(
                    children: const [
                      AddPlaceFields()
                    ],
                  ),
                ));
          },
        ));
  }
}