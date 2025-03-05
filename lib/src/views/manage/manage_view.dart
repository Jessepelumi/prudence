import 'package:flutter/material.dart';
import 'package:prudence/src/views/shared/page_appbar.dart';

class ManageView extends StatelessWidget {
  const ManageView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PageAppbar(title: "Manage"),
    );
  }
}
