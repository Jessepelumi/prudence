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
import 'package:prudence/src/views/shared/search_container.dart';

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

    //final List<NoteSummary> summaries = NoteSummary.noteSummary;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: medium),
          child: Column(
            children: [
              // header - search and notification
              Row(
                children: [
                  // search field
                  const SearchContainer(hintText: "Search notes"),
                  const SizedBox(width: medium),

                  // notification icon
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        child: const PhosphorIcon(
                          PhosphorIconsRegular.bellSimple,
                        ),
                      ),

                      // notification dot
                      Positioned(
                        top: extraSmall / 2,
                        right: extraSmall / 1.5,
                        child: Container(
                          width: small,
                          height: small,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: red,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: medium),

              // notes list
              Expanded(
                child: SingleChildScrollView(
                  child: Text("Notes"),
                ),
              ),
            ],
          ),
        ),
      ),

      // new note button
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const NoteEntry(),
          ),
        ),
        backgroundColor: dark ? lightGrey : darkGrey,
        child: PhosphorIcon(
          PhosphorIconsBold.plus,
          color: dark ? darkGrey : lightGrey,
        ),
      ),
    );
  }
}
