import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expenses,
    required this.onExpenseDeleted,
  });
  final List<Expense> expenses;
  final void Function(Expense expense) onExpenseDeleted;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (context, index) {
        return Dismissible(
          onDismissed: (direction) => onExpenseDeleted(expenses[index]),
          key: ValueKey(expenses[index]),
          child: ExpenseItem(expenses[index]),
        );
      },
    );
  }
}
