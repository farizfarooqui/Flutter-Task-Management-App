import 'package:flutter/material.dart';
import 'package:task_manager/view/widgets.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  @override
  State<HomeView> createState() => _HomeViewState();
}

final List addTaskList = ['Task 1', 'Task 2', 'Task 3'];
final List onProcessList = ['inprocess 1', 'inprocess 2', 'inprocess 3'];
final List finishedList = ['finished 1', 'finished 2'];

TextEditingController addTaskController = TextEditingController();

class _HomeViewState extends State<HomeView> {
  void updateMyTile(int oldIndex, int newIndex) {
    setState(() {
      if (oldIndex < newIndex) {
        newIndex--;
      }
      final tile = addTaskList.removeAt(oldIndex);
      addTaskList.insert(newIndex, tile);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            'Task Management',
            style: TextStyle(
                fontSize: 33, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          actions: const [
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.blue,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 15,
                  child: Icon(
                    Icons.question_mark_rounded,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
        body: Container(
            color: Colors.black,
            padding: const EdgeInsets.all(40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.black,
                  width: 1000,
                  child: Text(
                    'To Do',
                    style: myTextStyle,
                  ),
                ),
                Expanded(
                  child: ReorderableListView(
                      onReorder: (oldIndex, newIndex) =>
                          updateMyTile(oldIndex, newIndex),
                      children: [
                        for (final tile in addTaskList)
                          ListTile(
                            tileColor: Colors.blue,
                            key: Key(tile),
                            title: Text(tile),
                            trailing: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.more_vert)),
                          )
                      ]),
                ),
                ElevatedButton(
                    style: addTaskButton,
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text('Add new task'),
                              content: TextField(
                                controller: addTaskController,
                              ),
                              actions: [
                                ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        addTaskList.add(addTaskController.text);
                                        Navigator.pop(context);
                                      });
                                    },
                                    child: const Text('Save')),
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text('Discard'))
                              ],
                            );
                          });
                    },
                    child: const Text('Add Task')),
                Container(
                  color: Colors.black,
                  width: 1000,
                  child: Text(
                    'On Process',
                    style: myTextStyle,
                  ),
                ),
                Container(
                  color: Colors.black,
                  height: 200,
                ),
                Container(
                  color: Colors.black,
                  width: 1000,
                  child: Text(
                    'Finished',
                    style: myTextStyle,
                  ),
                ),
              ],
            )),
        floatingActionButton: floatingActionMsgButton);
  }
}
