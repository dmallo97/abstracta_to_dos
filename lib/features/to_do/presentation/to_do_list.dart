import 'dart:io';

import 'package:abstracta_to_dos/config/di/injection.dart';
import 'package:abstracta_to_dos/config/routes.dart';
import 'package:abstracta_to_dos/config/style/app_font_styles.dart';
import 'package:abstracta_to_dos/config/style/app_styles.dart';
import 'package:abstracta_to_dos/core/widgets/bottom_nav_bar.dart';
import 'package:abstracta_to_dos/core/widgets/custom_app_bar.dart';
import 'package:abstracta_to_dos/core/widgets/default_horizontal_spacing.dart';
import 'package:abstracta_to_dos/features/to_do/presentation/bloc/to_do_bloc.dart';
import 'package:abstracta_to_dos/features/to_do/presentation/to_do_editor.dart';
import 'package:abstracta_to_dos/features/to_do/presentation/widgets/to_do_card.dart';
import 'package:abstracta_to_dos/gen/assets.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

class ToDoList extends StatelessWidget {
  const ToDoList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(logoOpacity: 1),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          if (Platform.isIOS) {
            showModalBottomSheet(
              context: context,
              useRootNavigator: true,
              showDragHandle: true,
              isScrollControlled: true,
              useSafeArea: true,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppStyles.defaultRadius)),
              builder: (context) {
                return ToDoEditor(showAppBarLeading: false);
              },
            );
          } else {
            context.pushNamed(Routes.editTodo);
          }
        },
        isExtended: true,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      extendBody: true,
      bottomNavigationBar: Container(height: BottomNavBar.navBarClearance, color: Colors.transparent),
      body: SafeArea(
        bottom: false,
        child: BlocBuilder<ToDoBloc, ToDoState>(
          bloc: getIt<ToDoBloc>(),
          builder:
              (context, state) => RefreshIndicator(
                onRefresh: () async {
                  getIt<ToDoBloc>().add(const ToDoEvent.loadToDos());
                },
                child:
                    state.toDosList.isEmpty
                        ? DefaultHorizontalSpacing(
                          child: Center(
                            child: Column(
                              spacing: 20,
                              children: [
                                LottieBuilder.asset(Assets.lib.resources.media.emptyAnimation),
                                Text(
                                  'Nothing to show! You can start by creating your first to do',
                                  style: AppFontStyles.getTitleBold,
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        )
                        : ListView.builder(
                          padding: EdgeInsets.fromLTRB(10, 0, 10, BottomNavBar.navBarClearance),
                          itemCount: state.toDosList.length,
                          itemBuilder: (context, index) {
                            final todos = state.toDosList;
                            return ConstrainedBox(
                              constraints: BoxConstraints(maxHeight: 175),
                              child: Dismissible(
                                key: Key('todo-${todos[index].todoId}'),
                                onDismissed: (_) {
                                  getIt<ToDoBloc>().add(ToDoEvent.deleteToDo(todos[index].todoId));
                                },
                                direction: DismissDirection.endToStart,
                                background: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: AppStyles.cardDecorationStyle.borderRadius,
                                    color: Colors.red.shade900,
                                  ),
                                  alignment: Alignment.centerRight,
                                  padding: EdgeInsets.all(10),
                                  child: Icon(
                                    Platform.isIOS ? CupertinoIcons.delete : Icons.delete,
                                    color: Colors.white,
                                  ),
                                ),
                                child: ToDoCard(context, toDoModel: todos[index]),
                              ),
                            );
                          },
                        ),
              ),
        ),
      ),
    );
  }
}
