part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  /* 
  initial is when we are not yet sure if the user is authenticated or not cuz we need to check auth_facade 
  for that. 'getSignedInUser' if returns null user is not authenticated*/ 
  const factory AuthState.initial() = Initial;
  const factory AuthState.authenticated() = Authenticated;
  const factory AuthState.unauthenticated() = Unauthenticated;
}
