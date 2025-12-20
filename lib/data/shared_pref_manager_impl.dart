import 'package:keep_note/domain/shared_pref_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../domain/note/model/display_mode.dart';

class SharedPrefManagerImpl extends SharedPrefManager {
  final asyncPrefs = SharedPreferencesAsync();

  final listingDisplayModeKey = "listing_display_mode";
  @override
  Future<DisplayMode?> getListingDisplayMode() async {
    try {
      final result = await asyncPrefs.getString('listingDisplayModeKey');
      return DisplayMode.values.byName(result!);
    } on Exception catch (e) {
      return null;
    }
  }

  @override
  void setListingDisplayMode(DisplayMode mode) async{
    await asyncPrefs.setString('listingDisplayModeKey', mode.name);
  }
}
