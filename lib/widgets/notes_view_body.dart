import 'package:flutter/material.dart';
import '../../../widgets/custom_app_bar.dart';

import '../../../widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
           SizedBox(height: 40),
          CustomAppBar(title: 'NoTes', icon: Icons.search,),
          Expanded(child: NotesListView())
        ],
      ),
    );
  }
}

