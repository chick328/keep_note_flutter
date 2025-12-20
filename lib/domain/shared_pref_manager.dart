import 'note/model/display_mode.dart';

abstract class SharedPrefManager {
  Future<DisplayMode?> getListingDisplayMode();
  void setListingDisplayMode(DisplayMode mode);
}