part of 'auth_bloc.dart';

// we follow bloc naming convention that you should name events in the PAST tense
@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authCheckRequested() = AuthCheckRequested;
  const factory AuthEvent.signedOut() = SignedOut;
}