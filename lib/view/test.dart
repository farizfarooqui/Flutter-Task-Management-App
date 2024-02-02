import 'package:drag_and_drop_lists/drag_and_drop_lists.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/data/draggable_lists.dart';
import 'package:task_manager/model/draggable_list.dart';
import 'package:task_manager/view/widgets.dart';

class TestDrag extends StatefulWidget {
  const TestDrag({super.key});

  @override
  State<TestDrag> createState() => _TestDragState();
}

class _TestDragState extends State<TestDrag> {
  late List<DragAndDropList> lists;

  @override
  void initState() {
    super.initState();
    lists = allLists.map(buildList).toList();
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
      body: DragAndDropLists(
        listPadding: const EdgeInsets.all(16),
        listInnerDecoration: BoxDecoration(
          color: Theme.of(context).canvasColor,
          borderRadius: BorderRadius.circular(10),
        ),
        children: lists,
        itemDivider:
            const Divider(thickness: 2, height: 2, color: Colors.white),
        itemDecorationWhileDragging: const BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
        ),
        listDragHandle: buildDragHandle(isList: true),
        itemDragHandle: buildDragHandle(),
        onItemReorder: onReorderListItem,
        onListReorder: onReorderList,
      ),
      floatingActionButton: floatingActionMsgButton,
    );
  }

  DragHandle buildDragHandle({bool isList = false}) {
    final verticalAlignment = isList
        ? DragHandleVerticalAlignment.top
        : DragHandleVerticalAlignment.center;
    final color = isList ? Colors.blueGrey : Colors.black26;

    return DragHandle(
      verticalAlignment: verticalAlignment,
      child: Container(
        padding: const EdgeInsets.only(right: 10),
        child: Icon(Icons.menu, color: color),
      ),
    );
  }

  DragAndDropList buildList(DraggableList list) => DragAndDropList(
        header: Container(
          padding: const EdgeInsets.all(8),
          child: Text(
            list.header,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        children: list.items
            .map((item) => DragAndDropItem(
                  child: ListTile(
                    leading: Image.network(
                      item.urlImage,
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                    title: Text(item.title),
                  ),
                ))
            .toList(),
      );

  void onReorderListItem(
    int oldItemIndex,
    int oldListIndex,
    int newItemIndex,
    int newListIndex,
  ) {
    setState(() {
      final oldListItems = lists[oldListIndex].children;
      final newListItems = lists[newListIndex].children;

      final movedItem = oldListItems.removeAt(oldItemIndex);
      newListItems.insert(newItemIndex, movedItem);
    });
  }

  void onReorderList(
    int oldListIndex,
    int newListIndex,
  ) {
    setState(() {
      final movedList = lists.removeAt(oldListIndex);
      lists.insert(newListIndex, movedList);
    });
  }
}