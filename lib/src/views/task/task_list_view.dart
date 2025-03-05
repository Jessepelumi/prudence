import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:prudence/src/core/utils/sizes.dart';
import 'package:prudence/src/views/shared/page_appbar.dart';

class TaskListView extends StatelessWidget {
  const TaskListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PageAppbar(
        title: "Tasks",
        actions: [
          Padding(
            padding: const EdgeInsets.all(medium),
            child: GestureDetector(
              onTap: () {},
              child: const PhosphorIcon(
                PhosphorIconsBold.list,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
