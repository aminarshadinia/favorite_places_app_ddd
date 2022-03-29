// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i14;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i13;
import 'application/places/note_form/place_form_bloc.dart' as _i11;
import 'application/places/place_watcher/place_watcher_bloc.dart' as _i12;
import 'domain/auth/i_auth_facade.dart' as _i6;
import 'domain/place/i_place_repository.dart' as _i8;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i7;
import 'infrastructure/auth/firebase_user_mapper.dart' as _i4;
import 'infrastructure/core/firebase_injectable_module.dart' as _i15;
import 'infrastructure/core/firestore_helpers.dart' as _i10;
import 'infrastructure/places/place_repository.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i4.FirebaseUserMapper>(() => _i4.FirebaseUserMapper());
  gh.lazySingleton<_i5.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i6.IAuthFacade>(() => _i7.FirebaseAuthFacade(
      get<_i3.FirebaseAuth>(),
      get<_i5.GoogleSignIn>(),
      get<_i4.FirebaseUserMapper>()));
  gh.lazySingleton<_i8.IPlaceRepository>(
      () => _i9.PlaceRepository(get<_i10.FirebaseFirestore>()));
  gh.factory<_i11.PlaceFormBloc>(
      () => _i11.PlaceFormBloc(get<_i8.IPlaceRepository>()));
  gh.factory<_i12.PlaceWatcherBloc>(
      () => _i12.PlaceWatcherBloc(get<_i8.IPlaceRepository>()));
  gh.factory<_i13.SignInFormBloc>(
      () => _i13.SignInFormBloc(get<_i6.IAuthFacade>()));
  gh.factory<_i14.AuthBloc>(() => _i14.AuthBloc(get<_i6.IAuthFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends _i15.FirebaseInjectableModule {}
