import 'package:flutter/material.dart';

class DataTableView extends StatelessWidget {
  const DataTableView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DataTable(
        decoration: const BoxDecoration(color: Colors.white),
        sortColumnIndex: 0,
        sortAscending: true,
        columns: const <DataColumn>[
          DataColumn(
            label: Expanded(
              child: Text(
                'Name',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
          ),
          DataColumn(
            numeric: true,
            label: Expanded(
              child: Text(
                'Age',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
          ),
          DataColumn(
            label: Expanded(
              child: Text(
                'Role',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
          ),
        ],
        rows: const <DataRow>[
          DataRow(
            cells: <DataCell>[
              DataCell(Text('Sarah'),showEditIcon: true),
              DataCell(Text('19')),
              DataCell(Text('Student')),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('Janine'),showEditIcon: true),
              DataCell(Text('43')),
              DataCell(Text('Professor')),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('William'),showEditIcon: true),
              DataCell(Text('27')),
              DataCell(Text('Associate Professor')),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Flexible(child: FlutterLogo(size: 100,))),
              DataCell(Text('333')),
              DataCell(Text('Owner')),
            ],
          ),
        ],
      ),
    );
  }
}
