import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:freelingo/navigation/app_router.dart';
import 'package:freelingo/widgets/fl_text_button.dart';

@RoutePage()
class LearnScreen extends StatelessWidget {
  const LearnScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Learn English now'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 24),
            FlTextButton(
              onPressed: () {
                context.pushRoute(const VideoPlayerRoute());
              },
              child: const Text('Learn new words and phrases with video'),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
