import 'package:flutter/material.dart';

class DraggableView extends StatefulWidget {
  const DraggableView({super.key});

  @override
  DraggableState createState() => DraggableState();
}

class DraggableState extends State<DraggableView> {
  Color _currentColor = Colors.grey;
  double _top = 0, _left = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildDraggable(Colors.red),
                _buildDraggable(Colors.green),
                _buildDraggable(Colors.blue),
                _buildLongPressDraggable(Colors.cyan)
              ],
            ),
            const Icon(Icons.arrow_downward),
            DragTarget<Color>(
              onWillAccept: (data) => data != null,
              onAccept: (data) {
                setState(() {
                  _currentColor = data;
                });
              },
              builder: (context, candidateData, rejectedData) {
                return Container(
                  width: 100,
                  height: 100,
                  color: _currentColor,
                );
              },
            ),
          ],
        ),
        Positioned(
          top: _top,
          left: _left,
          child: Draggable(
            feedback: Icon(Icons.drag_handle, color: Colors.blue),
            onDragUpdate: (dragUpdateDetails) {
              print(
                  '${dragUpdateDetails.globalPosition.dx} ${dragUpdateDetails.globalPosition.dy}');
            },
            onDragEnd: (dragDetails) {
              setState(() {
                _top = dragDetails.offset.dy;
                _left = dragDetails.offset.dx;
              });
            },
            child: const Icon(
              Icons.star,
              size: 64,
              color: Colors.yellow,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDraggable(Color color) {
    return Draggable(
      data: color,
      feedback: Container(
        width: 50,
        height: 50,
        color: color.withOpacity(0.5),
        child: const Text('F'),
      ),
      childWhenDragging: Container(
        width: 50,
        height: 50,
        color: Colors.grey,
        child: const Text('childWhenDragging'),
      ),
      child: Container(
        width: 50,
        height: 50,
        color: color,
        child: const Text('child'),
      ),
    );
  }

  Widget _buildLongPressDraggable(Color color) {
    return LongPressDraggable<Color>(
      data: color,
      feedback: Container(
        width: 50,
        height: 50,
        color: color.withOpacity(0.5),
        child: Text('F'),
      ),
      childWhenDragging: Container(
        width: 50,
        height: 50,
        color: Colors.grey,
        child: const Text('childWhenDragging'),
      ),
      child: Container(
        width: 50,
        height: 50,
        color: color,
        child: const Text('LongPress'),
      ),
    );
  }
}
