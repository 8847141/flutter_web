part of 'budget_bloc.dart';

@immutable
abstract class BudgetState extends Equatable {
  const BudgetState();
}

class BudgetIsLoaded extends BudgetState {
  final String budget;
  final String otherBudget;

  const BudgetIsLoaded(this.budget, this.otherBudget);

  @override
  List<Object> get props => [budget, otherBudget];
}
