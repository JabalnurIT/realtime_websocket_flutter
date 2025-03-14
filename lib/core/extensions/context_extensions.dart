import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../src/dashboard/presentation/providers/dashboard_controller.dart';
import '../common/app/providers/chart_provider.dart';
import '../common/app/providers/tab_navigator.dart';

extension ContextExtensions on BuildContext {
  ThemeData get theme => Theme.of(this);

  MediaQueryData get mediaQuery => MediaQuery.of(this);

  Size get size => mediaQuery.size;
  double get width => size.width;
  double get height => size.height;

  TabNavigator get tabNavigator => read<TabNavigator>();

  ChartProvider get chartProvider => read<ChartProvider>();

  void pop() => tabNavigator.pop();

  void push(Widget page) => tabNavigator.push(TabItem(child: page));

  DashboardController get dashboardController => read<DashboardController>();
}
