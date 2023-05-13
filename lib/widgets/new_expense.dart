import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() => _NewExpenseState();
}

class _NewExpenseState extends State<NewExpense> {
  var currentTitle = '';

  void _saveTitleInput(String inputValue) {
    currentTitle = inputValue;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(children: [
        TextField(
          onChanged: _saveTitleInput,
          maxLength: 60,
          decoration: const InputDecoration(
            label: Text('Expense Title'),
          ),
        ),
        Row(
          children: [
            ElevatedButton(
              onPressed: () {
                print(currentTitle);
              },
              child: const Text('Save Expense'),
            ),
          ],
        )
      ]),
    );
  }
}
