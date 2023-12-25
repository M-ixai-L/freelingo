// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../auth/application/auth_bloc.dart' as _i11;
import '../cards_learn/application/cards_learn_bloc.dart' as _i6;
import '../cards_learn/infrastructure/cards_learn_service.dart' as _i7;
import '../core/repositories/auth_repository.dart' as _i3;
import '../core/services/storage_service.dart' as _i10;
import '../dictionary/application/dictionary_bloc.dart' as _i12;
import '../dictionary/infrastructure/dictionary_service.dart' as _i8;
import '../home/application/home_bloc.dart' as _i13;
import '../home/infrastructure/home_service.dart' as _i9;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.AuthRepository>(() => _i3.AuthRepository(
          firebaseAuth: gh<_i4.FirebaseAuth>(),
          firestore: gh<_i5.FirebaseFirestore>(),
        ));
    gh.factory<_i6.CardsLearnBloc>(() => _i6.CardsLearnBloc());
    gh.factory<_i7.CardsLearnService>(
        () => _i7.CardsLearnService(firestore: gh<_i5.FirebaseFirestore>()));
    gh.factory<_i8.DictionaryService>(
        () => _i8.DictionaryService(firestore: gh<_i5.FirebaseFirestore>()));
    gh.factory<_i9.HomeService>(
        () => _i9.HomeService(firestore: gh<_i5.FirebaseFirestore>()));
    gh.factory<_i10.StorageService>(() => _i10.StorageService());
    gh.factory<_i11.AuthBloc>(
        () => _i11.AuthBloc(authRepository: gh<_i3.AuthRepository>()));
    gh.factory<_i12.DictionaryBloc>(() =>
        _i12.DictionaryBloc(dictionaryService: gh<_i8.DictionaryService>()));
    gh.factory<_i13.HomeBloc>(() => _i13.HomeBloc(
          authRepository: gh<_i3.AuthRepository>(),
          homeService: gh<_i9.HomeService>(),
        ));
    return this;
  }
}
