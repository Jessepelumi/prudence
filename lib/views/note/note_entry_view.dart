import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:prudence/core/utils/colors.dart';
import 'package:prudence/core/utils/helper_functions.dart';
import 'package:prudence/core/utils/sizes.dart';
import 'package:prudence/views/shared/custom_appbar.dart';

class NoteEntry extends StatelessWidget {
  const NoteEntry({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: CustomAppbar(
        actions: [
          GestureDetector(
            child: const Padding(
              padding: EdgeInsets.only(right: large),
              child: PhosphorIcon(
                PhosphorIconsBold.bellSimple,
                size: smallLarge,
              ),
            ),
          ),
          GestureDetector(
            child: const Padding(
              padding: EdgeInsets.only(right: large),
              child: PhosphorIcon(
                PhosphorIconsBold.bookmarkSimple,
                size: smallLarge,
              ),
            ),
          ),
          GestureDetector(
            child: const Padding(
              padding: EdgeInsets.only(right: large),
              child: PhosphorIcon(
                PhosphorIconsBold.star,
                size: smallLarge,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // title
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: medium),
              child: TextFormField(
                minLines: 1,
                maxLines: 5,
                cursorWidth: 3.5,
                cursorColor: dark ? lightGrey : darkGrey,
                style: Theme.of(context).textTheme.titleLarge,
                decoration: InputDecoration(
                  hintText: "Title",
                  hintStyle: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: softGrey,
                      ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),

            // note
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: medium),
              child: TextFormField(
                minLines: 1,
                maxLines: null,
                cursorColor: dark ? lightGrey : darkGrey,
                //style: Theme.of(context).textTheme.titleLarge,
                decoration: InputDecoration(
                  hintText: "Note",
                  hintStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: softGrey,
                      ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
