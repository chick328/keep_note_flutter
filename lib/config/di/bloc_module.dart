import 'package:get_it/get_it.dart';

import '../../presentation/bloc/edit/edit_bloc.dart';
import '../../presentation/bloc/listing/listing_bloc.dart';

final locator = GetIt.instance;

void configureBlocModuleDependencies() {
  locator.registerFactory<ListingBloc>(
    () => ListingBloc(noteRepository: locator(), sharedPrefManager: locator()),
  );
  locator.registerFactory<EditBloc>(
    () => EditBloc(
      noteRepository: locator(),
      saveNoteImageUseCase: locator(),
      scheduleNoteNotificationUseCase: locator(),
    ),
  );
}
