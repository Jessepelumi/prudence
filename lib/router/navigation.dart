import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:prudence/router/navigation_provider.dart';
import 'package:prudence/views/dashboard/dashboard_view.dart';
import 'package:prudence/views/manage/manage_view.dart';
import 'package:prudence/views/note/note_list_view.dart';
import 'package:prudence/views/task/task_list_view.dart';

class Navigation extends ConsumerWidget {
  const Navigation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screens = [
      const DashboardView(),
      const TaskListView(),
      const NoteListView(),
      const ManageView(),
    ];

    final indexNavigation = ref.watch(navigationProvider);

    return Scaffold(
      bottomNavigationBar: NavigationBar(
        height: 80,
        elevation: 10,
        indicatorColor: Colors.transparent,
        selectedIndex: indexNavigation,
        onDestinationSelected: (value) {
          ref.read(navigationProvider.notifier).update((state) => value);
        },
        destinations: [
          NavigationBarTheme(
            data: NavigationBarThemeData(
              labelTextStyle: WidgetStateProperty.resolveWith(
                (states) => states.contains(WidgetState.selected)
                    ? TextStyle(color: Colors.purple[800])
                    : TextStyle(color: Colors.grey[800]),
              ),
            ),
            child: NavigationDestination(
              icon: PhosphorIcon(
                PhosphorIconsBold.squaresFour,
                color: indexNavigation == 0
                    ? Colors.purple[800]
                    : Colors.grey[800],
              ),
              label: "Dash",
            ),
          ),

          // second
          NavigationBarTheme(
            data: NavigationBarThemeData(
              labelTextStyle: WidgetStateProperty.resolveWith(
                (states) => states.contains(WidgetState.selected)
                    ? TextStyle(color: Colors.purple[800])
                    : TextStyle(color: Colors.grey[800]),
              ),
            ),
            child: NavigationDestination(
              icon: PhosphorIcon(
                PhosphorIconsBold.checkSquare,
                color: indexNavigation == 1
                    ? Colors.purple[800]
                    : Colors.grey[800],
              ),
              label: "Tasks",
            ),
          ),

          // third
          NavigationBarTheme(
            data: NavigationBarThemeData(
              labelTextStyle: WidgetStateProperty.resolveWith(
                (states) => states.contains(WidgetState.selected)
                    ? TextStyle(color: Colors.purple[800])
                    : TextStyle(color: Colors.grey[800]),
              ),
            ),
            child: NavigationDestination(
              icon: PhosphorIcon(
                PhosphorIconsBold.notePencil,
                color: indexNavigation == 2
                    ? Colors.purple[800]
                    : Colors.grey[800],
              ),
              label: "Notes",
            ),
          ),

          // fourth
          NavigationBarTheme(
            data: NavigationBarThemeData(
              labelTextStyle: WidgetStateProperty.resolveWith(
                (states) => states.contains(WidgetState.selected)
                    ? TextStyle(color: Colors.purple[800])
                    : TextStyle(color: Colors.grey[800]),
              ),
            ),
            child: NavigationDestination(
              icon: PhosphorIcon(
                PhosphorIconsBold.nut,
                color: indexNavigation == 3
                    ? Colors.purple[800]
                    : Colors.grey[800],
              ),
              label: "Manage",
            ),
          ),
        ],
      ),
      body: screens[indexNavigation],
    );
  }
}
