import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test1/core/util/blocs/app/cubit.dart';
import 'package:test1/core/util/blocs/app/states.dart';
import 'package:test1/core/util/widgets/primary_task_item.dart';

class AllWidget extends StatelessWidget {
  const AllWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppStates>(
      builder: (context, state) {
        return ListView.builder(
          itemBuilder: (context, index) => PrimaryTaskItem(
            task: AppBloc.get(context).tasks[index],
          ),
          itemCount: AppBloc.get(context).tasks.length,
        );
      },
    );
  }
}
