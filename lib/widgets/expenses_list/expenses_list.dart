import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList(
      {super.key, required this.expenses, required this.onRemoveExpense});

  final List<Expense> expenses;
  final Function(Expense expense) onRemoveExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, indx) => Dismissible(
        key: ValueKey(expenses[indx]),
        background: Container(
          color: Theme.of(context).colorScheme.error,
          // margin: EdgeInsets.symmetric(
          //     horizontal: Theme.of(context).cardTheme.margin!.horizontal),
        ),
        child: ExpenseItem(expenses[indx]),
        onDismissed: (direction) {
          onRemoveExpense(expenses[indx]);
        },
      ),
    );
  }
}
