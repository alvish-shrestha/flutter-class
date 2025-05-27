import 'package:flutter/material.dart';

class TimeView extends StatefulWidget {
  const TimeView({super.key});

  @override
  State<TimeView> createState() => _TimeViewState();
}

class _TimeViewState extends State<TimeView> {
  TimeOfDay time = TimeOfDay.now();
  DateTime date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Time & Date Picker")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              "Time: ${time.hour}:${time.minute.toString().padLeft(2, '0')}",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                TimeOfDay? newTime = await showTimePicker(
                  context: context,
                  initialTime: time,
                );
                if (newTime != null) {
                  setState(() {
                    time = newTime;
                  });
                }
              },
              child: const Text("Change Time"),
            ),
            const SizedBox(height: 40),
            Text(
              'Date: ${date.day}/${date.month}/${date.year}',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                DateTime? newDate = await showDatePicker(
                  context: context,
                  initialDate: date,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2050),
                );
                if (newDate != null) {
                  setState(() {
                    date = newDate;
                  });
                }
              },
              child: const Text('Change Date'),
            ),
          ],
        ),
      ),
    );
  }
}
