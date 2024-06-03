import 'package:flutter/material.dart';
import 'package:emanoelviana/src/core/utils/responsive_screen_provider.dart';
import 'package:emanoelviana/src/core/widgets/desktop/app_bar/dsk_navigation_bar.dart';
import 'package:emanoelviana/src/core/widgets/mobile/mbl_drawer.dart';
import 'package:emanoelviana/src/core/widgets/mobile/mbl_navigation_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: ResponsiveScreenProvider.isMobile(context) ||
                ResponsiveScreenProvider.isTabletDevice(context)
            ? const MblNavigationBar()
            : const DskNavigationBar(),
        drawer: ResponsiveScreenProvider.isMobile(context) ||
                ResponsiveScreenProvider.isTabletDevice(context)
            ? const MblDrawer()
            : null,
        body: const Center());
  }
}
