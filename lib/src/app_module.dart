import 'package:emanoelviana/src/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppModule extends StatelessWidget {
  const AppModule({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (_) {}),
      ],
      child: const AppWidget(),
    );
  }
}