import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:prudence/src/core/utils/colors.dart';
import 'package:prudence/src/core/utils/helper_functions.dart';
import 'package:prudence/src/router/navigation_provider.dart';
import 'package:prudence/src/views/dashboard/dashboard_view.dart';
import 'package:prudence/src/views/manage/manage_view.dart';
import 'package:prudence/src/views/note/note_list_view.dart';
import 'package:prudence/src/views/task/task_list_view.dart';

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
        height: 65,
        elevation: 10,
        backgroundColor: dark ? darkGrey : lightGrey,
        indicatorColor: Colors.transparent,
        selectedIndex: indexNavigation,
        onDestinationSelected: (value) {
          ref.read(navigationProvider.notifier).update((state) => value);
        },
        destinations: [
          // home
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
                PhosphorIconsBold.houseSimple,
              ),
              selectedIcon: PhosphorIcon(
                PhosphorIconsFill.houseSimple,
              ),
              label: "Home",
            ),
          ),

          // tasks
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

          // notes
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
                PhosphorIconsBold.stack,
              ),
              selectedIcon: PhosphorIcon(
                PhosphorIconsFill.stack,
              ),
              label: "Notes",
            ),
          ),

          // settings
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
                PhosphorIconsBold.gear,
              ),
              selectedIcon: PhosphorIcon(
                PhosphorIconsFill.gear,
              ),
              label: "Settings",
            ),
          ),
        ],
      ),
      body: screens[indexNavigation],
    );
  }
}
