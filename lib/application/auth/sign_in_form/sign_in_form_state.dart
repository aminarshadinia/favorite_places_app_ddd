part of 'sign_in_form_bloc.dart';


@freezed
abstract class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    required EmailAddress emailAddress,
    required Password password,
    required bool showErrorMessages, // to automatically communicate with UI to ckeck if inputs are valid or not
    required bool isSubmitting,
    required Option<Either<AuthFailure , Unit>> authFailureOrSuccessOption,
    // instead of returning null we type "Option"
    // if the response on the server is None then this means that no signin has happened yet.
  }) = _SignInFormState;

  factory SignInFormState.initial() => SignInFormState(
    emailAddress: EmailAddress(''),
    password: Password(''),
    showErrorMessages: false,
    isSubmitting: false,
    authFailureOrSuccessOption: none(),//we set it to none() because there is no resposne yet from the autheticatoin backend
  );
}


