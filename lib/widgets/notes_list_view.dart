import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/notes_cubit.dart';
import 'package:notes_app/cubits/add_note_cubit/notes_cubit/notes_state.dart';
import 'package:notes_app/model/note_model.dart';

import '../../../widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel>notes=BlocProvider.of<NotesCubit>(context).notes??[];
        return ListView.builder(
      itemCount: notes.length,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) =>  Padding(
            padding:const  EdgeInsets.symmetric(vertical: 10),
            child: NoteItem(note: notes[index]),
          ),
        );
      },
    );
  }
}
