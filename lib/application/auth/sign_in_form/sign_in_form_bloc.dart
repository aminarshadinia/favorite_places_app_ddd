import 'package:flutter/foundation.dart';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../domain/auth/i_auth_facade.dart';
import '../../../domain/auth/value_objects.dart';
import '../../../domain/auth/auth_failure.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';
part 'sign_in_form_bloc.freezed.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;

  SignInFormBloc.formBloc(this._authFacade) : super(SignInFormState.initial());

  SignInFormBloc(this._authFacade) : super(SignInFormState.initial()) {
    on<SignInFormEvent>((event, emit) async {
      
       await event.map(

        emailChanged: (e) async {
          // we copy the already existing states with some newly change values in line below
          emit(state.copyWith(
            emailAddress: EmailAddress(e.emailStr),
            //coode below holds the prev response from signin or register
            //so every time the email is updated we need to Set the response to 'none' to prevent user stuck in page
            authFailureOrSuccessOption: none(),
          ));
        },
        passwordChanged: (e) async {
          emit(state.copyWith(
            password: Password(e.passwordStr),
            authFailureOrSuccessOption: none(),
          ));
        },

        registerWithEmailAndPasswordPressed: (e) async {
          final isEmailValid = state.emailAddress.isValid();
          final isPasswordValid = state.password.isValid();
          Either<AuthFailure, Unit>? failureOrSuccess;
          if (isEmailValid && isPasswordValid) {
            emit(
              state.copyWith(
                isSubmitting: true,
                authFailureOrSuccessOption: none(),
              ),
            );
            failureOrSuccess = await _authFacade.registerWithEmailAndPassword(
                emailAddress: state.emailAddress, password: state.password);
          }
          emit(
            state.copyWith(
              isSubmitting: false,
              showErrorMessages: true,
              authFailureOrSuccessOption: optionOf(failureOrSuccess),
            ),
          );
        },

        signInWithEmailAndPasswordPressed: (e) async {
          final isEmailValid = state.emailAddress.isValid();
          final isPasswordValid = state.password.isValid();
          Either<AuthFailure, Unit>? failureOrSuccess;
          if (isEmailValid && isPasswordValid) {
            emit(
              state.copyWith(
                isSubmitting: true,
                authFailureOrSuccessOption: none(),
              ),
            );
            failureOrSuccess = await _authFacade.signInWithEmailAndPassword(
                emailAddress: state.emailAddress, password: state.password);
          }
          emit(
            state.copyWith(
              isSubmitting: false,
              showErrorMessages: true,
              authFailureOrSuccessOption: optionOf(failureOrSuccess),
            ),
          );
        },

        signInWithGooglePressed: (e) async {
          emit(state.copyWith(
            isSubmitting: true,
            authFailureOrSuccessOption: none(),
          ));
          final failureOrSuccess = await _authFacade.signInWithGoogle();
          emit(state.copyWith(
            isSubmitting: false,
            //code below will hold a response value from server which contains failute or success
            authFailureOrSuccessOption: some(failureOrSuccess),
          ));
        },
      );
    });
  }
}
