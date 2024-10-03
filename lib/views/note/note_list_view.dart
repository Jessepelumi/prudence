import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:prudence/core/utils/colors.dart';
import 'package:prudence/core/utils/helper_functions.dart';
import 'package:prudence/core/utils/sizes.dart';
import 'package:prudence/views/note/note_entry_view.dart';
import 'package:prudence/views/note/note_tile_view.dart';
import 'package:prudence/views/shared/page_appbar.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

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
                NoteTile(
                  title: "That Old Man",
                  details:
                      "Apostle Emmanuel Iren. That old man message. Spiritua growth. Putting off the old man and his deeds.",
                  timeStamp: "01:42 AM - 16 August",
                  isTagged: true,
                  color: Colors.red,
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NoteEntry(),
                    ),
                  ),
                  //isFavorite: true,
                ),
                const SizedBox(height: 16),
                NoteTile(
                  title: "The Convergence",
                  details:
                      "Isaiah 60:1-2. Influence and power. God wants to partner with us for the expansion of His Kingdom.",
                  timeStamp: "11:11 AM - 15 August",
                  isTagged: false,
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NoteEntry(),
                    ),
                  ),
                  isFavorite: true,
                ),
                const SizedBox(height: 16),
                NoteTile(
                  title: "Environment for Success",
                  details:
                      "Abraham - Genesis 12. 3 John 1:2. Purpose is that one thing that we must succeed at, else every other thing we succeed at doesn't matter.",
                  timeStamp: "04:31 PM - 23 July",
                  isTagged: true,
                  color: Colors.purple,
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NoteEntry(),
                    ),
                  ),
                  isFavorite: true,
                ),
              ],
            )),
      ),
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
