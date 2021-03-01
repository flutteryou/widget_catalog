import 'package:widget_catalog/animation_and_motion/animated_modal_barrier_demo.dart';
import 'package:widget_catalog/common/single_choice_page.dart';
import 'package:widget_catalog/common/widget_entry.dart';

import 'animated_align_demo.dart';
import 'animated_builder_demo.dart';
import 'animated_container_demo.dart';
import 'animated_cross_fade_demo.dart';
import 'animated_default_text_style_demo.dart';
import 'animated_list_state.dart';

class AnimationAndMotionPage extends SingleChoicePage {
  AnimationAndMotionPage()
      : super(
          'Animation and motion',
          [
            WidgetEntry(
              'AnimatedAlign',
              AnimatedAlignDemo(),
            ),
            WidgetEntry(
              'AnimatedBuilder',
              AnimatedBuilderDemo(),
            ),
            WidgetEntry(
              'AnimatedContainer',
              AnimatedContainerDemo(),
            ),
            WidgetEntry(
              'AnimatedCrossFade',
              AnimatedCrossFadeDemo(),
            ),
            WidgetEntry(
              'AnimatedDefaultTextStyle',
              AnimatedDefaultTextStyleDemo(),
            ),
            WidgetEntry(
              'AnimatedListState',
              AnimatedListStateDemo(),
            ),
            WidgetEntry(
              'AnimatedModalBarrier',
              AnimatedModalBarrierDemo(),
            ),
          ],
        );
}
