part of 'budget_bloc.dart';

@immutable
abstract class BudgetEvent extends Equatable {
  const BudgetEvent();
}

class ChangeBudget extends BudgetEvent {
  final String budget;

  ChangeBudget(this.budget);

  @override
  List<Object> get props => [budget];
}

class ChangeOtherBudget extends BudgetEvent {
  final String otherBudget;

  ChangeOtherBudget(this.otherBudget);

  @override
  List<Object> get props => [otherBudget];
}
