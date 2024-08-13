import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:prudence/core/utils/colors.dart';
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
                    ? const TextStyle(color: primary)
                    : const TextStyle(color: darkGrey),
              ),
            ),
            child: NavigationDestination(
              icon: PhosphorIcon(
                PhosphorIconsBold.squaresFour,
                color: indexNavigation == 0 ? primary : darkGrey,
              ),
              label: "Dash",
            ),
          ),

          // second
          NavigationBarTheme(
            data: NavigationBarThemeData(
              labelTextStyle: WidgetStateProperty.resolveWith(
                (states) => states.contains(WidgetState.selected)
                    ? const TextStyle(color: primary)
                    : const TextStyle(color: darkGrey),
              ),
            ),
            child: NavigationDestination(
              icon: PhosphorIcon(
                PhosphorIconsBold.checkSquare,
                color: indexNavigation == 1 ? primary : darkGrey,
              ),
              label: "Tasks",
            ),
          ),

          // third
          NavigationBarTheme(
            data: NavigationBarThemeData(
              labelTextStyle: WidgetStateProperty.resolveWith(
                (states) => states.contains(WidgetState.selected)
                    ? const TextStyle(color: primary)
                    : const TextStyle(color: darkGrey),
              ),
            ),
            child: NavigationDestination(
              icon: PhosphorIcon(
                PhosphorIconsBold.notePencil,
                color: indexNavigation == 2 ? primary : darkGrey,
              ),
              label: "Notes",
            ),
          ),

          // fourth
          NavigationBarTheme(
            data: NavigationBarThemeData(
              labelTextStyle: WidgetStateProperty.resolveWith(
                (states) => states.contains(WidgetState.selected)
                    ? const TextStyle(color: primary)
                    : const TextStyle(color: darkGrey),
              ),
            ),
            child: NavigationDestination(
              icon: PhosphorIcon(
                PhosphorIconsBold.nut,
                color: indexNavigation == 3 ? primary : darkGrey,
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
