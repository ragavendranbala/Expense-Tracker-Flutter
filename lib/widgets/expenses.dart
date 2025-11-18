import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});
  @override
  State<Expenses> createState() {
    return _Expenses();
  }
}

class _Expenses extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Ponniyin Selvan 2',
      amount: 250.00,
      date: DateTime.now(),
      category: .leisure,
    ),
    Expense(title: 'Bus', amount: 10, date: DateTime.now(), category: .travel),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense Tracker'),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
      ),
      body: Column(
        children: [
          Text('Charts!!!'),
          Expanded(child: ExpensesList(expenses: _registeredExpenses)),
        ],
      ),
    );
  }
}
