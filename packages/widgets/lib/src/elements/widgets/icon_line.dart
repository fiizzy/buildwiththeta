// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:line_icons/line_icons.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';

/// Returns a Icon widget in Teta.
/// It wants a [BuildContext] and a [WidgetState] to get the [FSize] and [FFill] values.
class OpenWLineIcon extends Icon {
  /// Returns a Icon widget in Teta
  OpenWLineIcon({
    super.key,
    required final BuildContext context,
    required final String icon,
    required final FSize width,
    required final FFill fill,
  }) : super(
          LineIcons.byName(icon),
          size: width.get(
            state: context.watch<TreeState>(),
            context: context,
            isWidth: true,
          ),
          color: HexColor(
            fill.getHexColor(
              context,
              context.watch<TreeState>().colorStyles,
              context.watch<TreeState>().theme,
            ),
          ),
        );
}
