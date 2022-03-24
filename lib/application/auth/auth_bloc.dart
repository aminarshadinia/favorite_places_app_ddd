import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sample_app/domain/auth/i_auth_facade.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
/* injectable will make sure that we can inject AuthBloc or find it with getIt and
also we are goin to make sure that the costructure is beign pased proper instances
in this case IAuthFacade */
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;

  AuthBloc.authBloc(this._authFacade) : super(const AuthState.initial());

  AuthBloc(this._authFacade) : super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      await event.map(
        authCheckRequested: (e) async {
          final userOption = await _authFacade.getSignedInUser();
          // List<Object> get props => [text, number];
          // emit(
          //   userOption.fold(
          //   /* fold is like an if statemenet so if the re is none(userIsnotAuthenticated)
          //   we want to emit sth and else emit sthelse */
          //   () => const AuthState.unauthenticated(),
          //   (_) => const AuthState.authenticated(),
          // )
          // );
          emit(
            userOption == null ? const AuthState.unauthenticated() : const AuthState.authenticated(), 
          );
        },
        signedOut: (e) async {
          await _authFacade.signOut();
          emit(const AuthState.unauthenticated());
        },
      );
    });
  }
}
