import 'package:widgetbook/src/rendering/builders/text_scale_builder.dart';
import 'package:widgetbook/src/rendering/rendering.dart';
import 'package:widgetbook/src/state_change_notifier.dart';
import 'package:widgetbook_models/widgetbook_models.dart';

class RenderingProvider<CustomTheme>
    extends StateChangeNotifier<RenderingState<CustomTheme>> {
  RenderingProvider({
    // TODO is this required?
    required List<WidgetbookFrame> frames,
    required DeviceFrameBuilderFunction deviceFrameBuilder,
    required ThemeBuilderFunction<CustomTheme> themeBuilder,
    required ScaffoldBuilderFunction scaffoldBuilder,
    required AppBuilderFunction appBuilder,
    TextScaleBuilder? textScaleBuilder,
    required UseCaseBuilderFunction useCaseBuilder,
  }) : super(
          state: RenderingState<CustomTheme>(
            frames: frames,
            deviceFrameBuilder: deviceFrameBuilder,
            themeBuilder: themeBuilder,
            scaffoldBuilder: scaffoldBuilder,
            appBuilder: appBuilder,
            textScaleBuilder: textScaleBuilder ?? defaultTextScaleBuilder,
            useCaseBuilder: useCaseBuilder,
          ),
        );
}
