import 'package:get_it/get_it.dart';

import '../../presentation/bloc/edit/edit_bloc.dart';
import '../../presentation/bloc/listing/listing_bloc.dart';

final locator = GetIt.instance;

void configureBlocModuleDependencies() {
  locator.registerLazySingleton<ListingBloc>(
          () => ListingBloc(noteRepository: locator())
  );
  locator.registerLazySingleton<EditBloc>(
          () => EditBloc(noteRepository: locator())
  );
}
