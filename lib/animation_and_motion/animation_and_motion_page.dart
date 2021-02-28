import 'package:widget_catalog/common/single_choice_page.dart';
import 'package:widget_catalog/common/widget_entry.dart';

import 'animated_align_demo.dart';
import 'animated_builder_demo.dart';
import 'animated_container_demo.dart';
import 'animated_cross_fade_demo.dart';
import 'animated_default_text_style_demo.dart';

class AnimationAndMotionPage extends SingleChoicePage {
  AnimationAndMotionPage() : super(
      'Animation and motion',
    [
      WidgetEntry('AnimatedAlign', AnimatedAlignDemo()),
      WidgetEntry('AnimatedBuilder', AnimatedBuilderDemo()),
      WidgetEntry('AnimatedContainer', AnimatedContainerDemo()),
      WidgetEntry('AnimatedCrossFade', AnimatedCrossFadeDemo()),
      WidgetEntry('AnimatedDefaultTextStyle', AnimatedDefaultTextStyleDemo()),
    ]
  );
}