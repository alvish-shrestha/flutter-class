import 'package:flutter/material.dart';
import 'package:myproject/model/datatable_model.dart';

class DatatableView extends StatefulWidget {
  const DatatableView({super.key});

  @override
  State<DatatableView> createState() => _DatatableViewState();
}

// Sample student data
List<Student> lstStudent = [
  Student(name: "Alvish", roll: 1),
  Student(name: "Aayush", roll: 2),
  Student(name: "Prajwol", roll: 3),
];

class _DatatableViewState extends State<DatatableView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data table"),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: displayDatatable(),
    );
  }

  Widget displayDatatable() {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: DataTable(
        headingRowColor: WidgetStateColor.resolveWith((states) => Colors.red),
        border: TableBorder.all(color: Colors.black),
        columns: const [
          DataColumn(
            label: Expanded(child: Text("Name", textAlign: TextAlign.center)),
          ),
          DataColumn(
            label: Expanded(
              child: Text("Roll no", textAlign: TextAlign.center),
            ),
          ),
          DataColumn(
            label: Expanded(child: Text("Action", textAlign: TextAlign.center)),
          ),
        ],
        rows:
            lstStudent
                .map(
                  (student) => DataRow(
                    cells: [
                      DataCell(Center(child: Text(student.name))),
                      DataCell(Center(child: Text(student.roll.toString()))),
                      DataCell(
                        Center(
                          child: Wrap(
                            spacing: 8,
                            children: [
                              // IconButton(
                              //   onPressed: () {},
                              //   icon: const Icon(Icons.edit),
                              // ),
                              IconButton(
                                onPressed: () {
                                  _showAlertDialog(context, student);
                                },
                                icon: const Icon(Icons.delete),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
                .toList(),
      ),
    );
  }

  _showAlertDialog(BuildContext context, Student student) {
    AlertDialog alert = AlertDialog(
      title: const Text("Delete?"),
      content: Text("Are you sure you want to delete ${student.name} ??"),
      actions: [
        TextButton(
          child: const Text("NO"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        TextButton(
          child: const Text("Yes"),
          onPressed: () {
            setState(() {
              lstStudent.remove(student);
            });
            Navigator.pop(context);
          },
        ),
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
