import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:prudence/core/utils/colors.dart';
import 'package:prudence/core/utils/helper_functions.dart';
import 'package:prudence/router/navigation_provider.dart';
import 'package:prudence/views/dashboard/dashboard_view.dart';
import 'package:prudence/views/manage/manage_view.dart';
import 'package:prudence/views/note/note_list_view.dart';
import 'package:prudence/views/task/task_list_view.dart';

class Navigation extends ConsumerWidget {
  const Navigation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dark = HelperFunctions.isDarkMode(context);

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
        backgroundColor: dark ? darkGrey : lightGrey,
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
                    ? const TextStyle(fontWeight: FontWeight.bold)
                    : const TextStyle(fontWeight: FontWeight.normal),
              ),
            ),
            child: const NavigationDestination(
              icon: PhosphorIcon(
                PhosphorIconsBold.squaresFour,
              ),
              selectedIcon: PhosphorIcon(
                PhosphorIconsFill.squaresFour,
              ),
              label: "Dash",
            ),
          ),

          // second
          NavigationBarTheme(
            data: NavigationBarThemeData(
              labelTextStyle: WidgetStateProperty.resolveWith(
                (states) => states.contains(WidgetState.selected)
                    ? const TextStyle(fontWeight: FontWeight.bold)
                    : const TextStyle(fontWeight: FontWeight.normal),
              ),
            ),
            child: const NavigationDestination(
              icon: PhosphorIcon(
                PhosphorIconsBold.checkSquare,
              ),
              selectedIcon: PhosphorIcon(
                PhosphorIconsFill.checkSquare,
              ),
              label: "Tasks",
            ),
          ),

          // third
          NavigationBarTheme(
            data: NavigationBarThemeData(
              labelTextStyle: WidgetStateProperty.resolveWith(
                (states) => states.contains(WidgetState.selected)
                    ? const TextStyle(fontWeight: FontWeight.bold)
                    : const TextStyle(fontWeight: FontWeight.normal),
              ),
            ),
            child: const NavigationDestination(
              icon: PhosphorIcon(
                PhosphorIconsBold.notebook,
              ),
              selectedIcon: PhosphorIcon(
                PhosphorIconsFill.notebook,
              ),
              label: "Notes",
            ),
          ),

          // fourth
          NavigationBarTheme(
            data: NavigationBarThemeData(
              labelTextStyle: WidgetStateProperty.resolveWith(
                (states) => states.contains(WidgetState.selected)
                    ? const TextStyle(fontWeight: FontWeight.bold)
                    : const TextStyle(fontWeight: FontWeight.normal),
              ),
            ),
            child: const NavigationDestination(
              icon: PhosphorIcon(
                PhosphorIconsBold.nut,
              ),
              selectedIcon: PhosphorIcon(
                PhosphorIconsFill.nut,
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
