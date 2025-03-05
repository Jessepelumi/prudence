import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:prudence/src/core/utils/colors.dart';
import 'package:prudence/src/core/utils/helper_functions.dart';
import 'package:prudence/src/core/utils/sizes.dart';
import 'package:prudence/src/models/note/dummy_note_sum.dart';
import 'package:prudence/src/views/note/note_entry_view.dart';
import 'package:prudence/src/views/note/widgets/note_tile_view.dart';
import 'package:prudence/src/views/note/widgets/section_header.dart';
import 'package:prudence/src/views/shared/page_appbar.dart';

class NoteListView extends StatefulWidget {
  const NoteListView({super.key});

  @override
  State<NoteListView> createState() => _NoteListViewState();
}

class _NoteListViewState extends State<NoteListView> {
  bool isCollapsed = false;

  void toggleCollapse() {
    setState(() {
      isCollapsed = !isCollapsed;
    });
  }

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    final List<NoteSummary> summaries = NoteSummary.noteSummary;

    return Scaffold(
      appBar: PageAppbar(
        title: "Notes",
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: medium),
          child: Column(
            children: [
              NoteSectionHeader(
                month: "October, 2024",
                isCollapsed: isCollapsed,
                onToggle: toggleCollapse,
              ),
              if (!isCollapsed)
                Container(
                  padding: const EdgeInsets.all(medium),
                  decoration: BoxDecoration(
                    color: dark ? darkGrey : lightGrey,
                    //boxShadow: [ShadowStyle(context).customShadow],
                    borderRadius: const BorderRadius.all(
                      Radius.circular(small),
                    ),
                  ),
                  child: Column(
                    children: List.generate(summaries.length, (index) {
                      final summary = summaries[index];
                      return Column(
                        children: [
                          NoteTile(
                            title: summary.title,
                            details: summary.detail,
                            timeStamp: summary.timeStamp,
                            onTap: () {},
                          ),
                          if (index != summaries.length - 1) const Divider(),
                        ],
                      );
                    }),
                  ),
                ),
              // const NoteSectionHeader(month: "September, 2024"),
              // Container(
              //   padding: const EdgeInsets.all(medium),
              //   decoration: BoxDecoration(
              //     color: dark ? darkGrey : lightGrey,
              //     //boxShadow: [ShadowStyle(context).customShadow],
              //     borderRadius: const BorderRadius.all(
              //       Radius.circular(small),
              //     ),
              //   ),
              //   child: Column(
              //     children: List.generate(summaries.length, (index) {
              //       final summary = summaries[index];
              //       return Column(
              //         children: [
              //           NoteTile(
              //             title: summary.title,
              //             details: summary.detail,
              //             timeStamp: summary.timeStamp,
              //             onTap: () {},
              //           ),
              //           if (index != summaries.length - 1) const Divider(),
              //         ],
              //       );
              //     }),
              //   ),
              // ),
              // const NoteSectionHeader(month: "August, 2024"),
              // Container(
              //   padding: const EdgeInsets.all(medium),
              //   decoration: BoxDecoration(
              //     color: dark ? darkGrey : lightGrey,
              //     //boxShadow: [ShadowStyle(context).customShadow],
              //     borderRadius: const BorderRadius.all(
              //       Radius.circular(small),
              //     ),
              //   ),
              //   child: Column(
              //     children: List.generate(summaries.length, (index) {
              //       final summary = summaries[index];
              //       return Column(
              //         children: [
              //           NoteTile(
              //             title: summary.title,
              //             details: summary.detail,
              //             timeStamp: summary.timeStamp,
              //             onTap: () {},
              //           ),
              //           if (index != summaries.length - 1) const Divider(),
              //         ],
              //       );
              //     }),
              //   ),
              // ),
            ],
          ),
        ),
      ),

      // new note
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const NoteEntry(),
          ),
        ),
        backgroundColor: dark ? darkGrey : lightGrey,
        child: const PhosphorIcon(
          PhosphorIconsBold.plus,
        ),
      ),
    );
  }
}
