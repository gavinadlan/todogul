import 'package:flutter/material.dart';
import 'custom_dropdown.dart';
import 'custom_text_field.dart';

class CreateTaskBottomSheet extends StatefulWidget {
  @override
  _CreateTaskBottomSheetState createState() => _CreateTaskBottomSheetState();
}

class _CreateTaskBottomSheetState extends State<CreateTaskBottomSheet> {
  int selectedStatusIndex = 0; // 0 = Incomplete, 1 = Completed

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
        top: 16,
        bottom: MediaQuery.of(context).viewInsets.bottom + 16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Create to-do',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 16),
          CustomTextField(hintText: 'Enter Title', labelText: 'Title'),
          SizedBox(height: 16),
          CustomTextField(hintText: 'Enter Description', labelText: 'Description', maxLines: 3),
          SizedBox(height: 16),
          CustomDropdown(labelText: 'Repeat', options: ['No Repeat', 'Daily', 'Weekly', 'Monthly']),
          SizedBox(height: 16),
          CustomDropdown(labelText: 'Day', options: [
            'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'
          ]),
          SizedBox(height: 16),
          CustomDropdown(
            labelText: 'Reminder',
            options: [
              'None',
              '5 minutes before',
              '10 minutes before',
              '15 minutes before',
              '30 minutes before',
              '1 hour before'
            ],
          ),
          SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () async {
                    await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2100),
                      builder: (context, child) {
                        return Theme(
                          data: ThemeData.dark(),
                          child: child!,
                        );
                      },
                    );
                  },
                  child: Text('Select Date'),
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: ElevatedButton(
                  onPressed: () async {
                    await showTimePicker(
                      context: context,
                      initialTime: TimeOfDay.now(),
                      builder: (context, child) {
                        return Theme(
                          data: ThemeData.dark(),
                          child: child!,
                        );
                      },
                    );
                  },
                  child: Text('Select Time'),
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Text(
            'Task Status:',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Center(
            child: ToggleButtons(
              isSelected: [selectedStatusIndex == 0, selectedStatusIndex == 1],
              onPressed: (index) {
                setState(() {
                  selectedStatusIndex = index;
                });
              },
              borderRadius: BorderRadius.circular(8),
              selectedBorderColor: Colors.white,
              fillColor: Color(0xFF8687E7),
              color: Colors.white,
              selectedColor: Colors.black,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Text('Incomplete'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Text('Completed'),
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF8687E7),
            ),
            child: Center(
              child: Text('Add Task'),
            ),
          ),
        ],
      ),
    );
  }
}
