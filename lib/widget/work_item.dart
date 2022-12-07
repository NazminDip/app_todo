import 'package:flutter/material.dart';

import '../model/work.dart';

class WorkItem extends StatelessWidget {
  final Work work;


  // ignore: prefer_typing_uninitialized_variables
  final onworkChanged;

  // ignore: prefer_typing_uninitialized_variables
  final onDeleteItem;

  const WorkItem({
    Key? key,
    required this.work,
    this.onworkChanged,
    this.onDeleteItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        child: ListTile(
            onTap: () {
              onworkChanged(work);
            },
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            tileColor: Colors.white,
            leading: Icon(
                work.isDone ? Icons.check_box : Icons.check_box_outline_blank,
                color: Colors.pink),
            title: Text(
              work.worktext!,
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  decoration: work.isDone?TextDecoration.lineThrough: null),
            ),
            trailing: Container(
              padding: const EdgeInsets.all(0),
              margin: const EdgeInsets.symmetric(vertical: 12),
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.red,
              ),
              child: IconButton(
                onPressed: () {
                  onDeleteItem(work.id);
                },
                icon: const Icon(Icons.delete, size: 16, color: Colors.white),
              ),
            )),
      ),
    );
  }
}
