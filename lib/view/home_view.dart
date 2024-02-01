import 'package:flutter/material.dart';
import 'package:pulsator/pulsator.dart';
import 'package:task_manager/view/widgets.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  @override
  State<HomeView> createState() => _HomeViewState();
}

List addTask = ['Task 1', 'Task 2', 'Task 3'];
List onProcess = ['inprocess 1', 'inprocess 2', 'inprocess 3'];
List finished = ['finished 1', 'finished 2'];

TextEditingController addTaskController = TextEditingController();

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
      body: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'To Do',
                style: myTextStyle,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: addTask.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: ListTile(
                        tileColor: Colors.amber,
                        title: Text(addTask[index]),
                        trailing: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.more_vert)),
                      ),
                    );
                  },
                ),
              ),

              // Draggable(
              //     child: Padding(
              //       padding: const EdgeInsets.only(top: 5, bottom: 5),
              //       child: ListTile(
              //         tileColor: Colors.amber,
              //         title: Text('1'),
              //       ),
              //     ),
              //     feedback: ListTile(
              //       title: Text('1'),
              //     )),
              ElevatedButton(
                  style: ButtonStyle(
                      fixedSize:
                          const MaterialStatePropertyAll(Size(10000, 50)),
                      // side: const MaterialStatePropertyAll(
                      //     BorderSide(color: Colors.blue)),
                      shape: const MaterialStatePropertyAll(
                          RoundedRectangleBorder()),
                      backgroundColor:
                          const MaterialStatePropertyAll(Colors.blue),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white)),
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
                                      addTask.add(addTaskController.text);
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
              Text(
                'On Process',
                style: myTextStyle,
              ),
              Container(
                color: Colors.blue,
                height: 200,
              ),
              Text(
                'Finished',
                style: myTextStyle,
              ),
              Container(
                color: Colors.blue,
                height: 200,
              ),
            ],
          )),
      floatingActionButton: IconButton(
          onPressed: () {},
          icon: const PulseIcon(
            icon: Icons.message,
            pulseColor: Colors.blue,
            iconColor: Colors.white,
            iconSize: 44,
            innerSize: 54,
            pulseSize: 116,
            pulseCount: 4,
            pulseDuration: Duration(seconds: 4),
          )),
    );
  }
}
