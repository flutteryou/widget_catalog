import 'package:widget_catalog/common/single_choice_page.dart';
import 'package:widget_catalog/common/widget_entry.dart';
import 'package:widget_catalog/navigation/animate_widget_across_screens.dart';
import 'package:widget_catalog/navigation/navigate_to_a_new_screen_and_back.dart';

class NavigationPage extends SingleChoicePage {
  NavigationPage()
      : super(
          'Navigation demos',
          [
            WidgetEntry(
              'Animate a widget across screens',
              MainScreen(),
            ),
            WidgetEntry(
              'Navigate to a new screen and back',
              FirstRoute(),
            )
          ],
        );
}
