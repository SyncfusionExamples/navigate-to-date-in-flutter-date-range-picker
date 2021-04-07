import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

void main() => runApp(ProgrammaticDateNavigation());

class ProgrammaticDateNavigation extends StatefulWidget {
  @override
  DateNavigationState createState() => DateNavigationState();
}

class DateNavigationState extends State<ProgrammaticDateNavigation> {
  final DateRangePickerController _controller = DateRangePickerController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(50, 130, 50, 0),
              child: MaterialButton(
                child: Text('Change display date'),
                onPressed: () {
                  _controller.displayDate = DateTime(2020, 5, 1, 9, 0, 0);
                },
              ),
            ),
            Card(
              margin: const EdgeInsets.fromLTRB(50, 50, 50, 110),
              child: SfDateRangePicker(
                view: DateRangePickerView.month,
                controller: _controller,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
